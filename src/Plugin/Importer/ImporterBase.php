<?php

namespace Drupal\fcc_ham_data\Plugin\Importer;

use Drupal\Core\Database\Connection;
use Drupal\Core\Plugin\ContainerFactoryPluginInterface;
use Drupal\fcc_ham_data\FccSchemaParser;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Drupal\Core\Plugin\ContextAwarePluginBase;

/**
 * Base class for importers.
 */
abstract class ImporterBase extends ContextAwarePluginBase implements ImporterInterface, ContainerFactoryPluginInterface {

  /**
   * Number of rows to insert on one multi-insert query.
   * 
   * @const int
   */
  const IMPORT_BLOCK_SIZE = 1000;

  /**
   * Callback every this many rows. 
   *
   * @const int
   */
  const CALLBACK_BLOCK_SIZE = 10000;
  
  /**
   * Database connection
   *
   * @var \Drupal\Core\Database\Connection
   */
  protected $dbConnection;

  /**
   * The FCC  schema parser.
   *
   * @var FccSchemaParser
   */
  private $fccSchemaParser;

  /**
   * ImporterBase constructor.

   * {@inheritDoc}
   * @param \Drupal\Core\Database\Connection $db_connection
   */
  public function __construct(
    array $configuration, $plugin_id, $plugin_definition,
    Connection $db_connection,
    FccSchemaParser $fcc_schema_parser
  ) {
    parent::__construct($configuration, $plugin_id, $plugin_definition);
    $this->dbConnection = $db_connection;
    $this->fccSchemaParser = $fcc_schema_parser;
  }

  /**
   * {@inheritDoc}
   */
  public static function create(
    ContainerInterface $container,
    array $configuration, $plugin_id, $plugin_definition
  ) {
    return new static(
      $configuration, $plugin_id, $plugin_definition,
      $container->get('database'),
      $container->get('fcc_ham_data.fcc_schema_parser')
    );
  }

  /**
   * {@inheritDoc}
   */
  public function import($file_path, callable $callback = NULL) {

    if (!file_exists($file_path)) {
      throw new \Exception(sprintf('File %s does not exist.', $file_path));
    }

    $table_name = 'fcc_license_' . $this->getTableId();
    // Read FCC schema SQL.
    $fields = array_keys($this->fccSchemaParser->getFields($this->getTableId()));
    $file_field_count = count($fields);

    // Add an extra fields.
    $this->alterFieldList($fields);

    $this->dbConnection->truncate($table_name)
      ->execute();

    $file = new \SplFileObject($file_path);
    $row_count = 0;
    $block_count = 0;
    $imported_count = 0;

    // Use a multi-insert query for performance.
    $query = $this->dbConnection
      ->insert($table_name)
      ->fields($fields);

    while(!$file->eof()) {
      $row_count++;
      $row_string = $file->fgets();
      $row_array = explode('|', $row_string);
      $row_array = array_map('trim', $row_array);

      if (count($row_array) === 1 && empty($row_array[0])) {
        // Blank line, probably at the end of file.
        continue;
      }

      if (count($row_array) < $file_field_count) {
        // Row has less columns than expected.
        if ($callback !== NULL) {
           $callback(sprintf('Row %s has %s rows, expected %s%s', $row_count, count($row_array), count($file_field_count)));
        }
        continue;
      }

      // Assemble key / value array data to insert. 
      $values = [];
      foreach ($fields as $idx  => $name) {
        $values[$name] = !empty($row_array[$idx]) ? utf8_encode($row_array[$idx]) : NULL;
      }

      // Add any extra values. 
      $this->alterValues($row_string, $row_array, $values);

      $query->values($values);
      $block_count++;

      if ($block_count == static::IMPORT_BLOCK_SIZE) {
        // Insert the rows.
        $query->execute();

        // Start next query.
        $query = $this->dbConnection
          ->insert($table_name)
          ->fields($fields);

        $imported_count += $block_count;
        $block_count = 0;

        if ($callback !== NULL && ($imported_count % static::CALLBACK_BLOCK_SIZE) === 0) {
          // Report progress.
          $callback($imported_count);
        }
      }
    }

    if ($block_count > 0) {
      // Insert the last partial block. 
      $query->execute();
    }
  }

  /**
   * Alter the list of fields beyond what we got from FCC.
   * 
   * @param $fields
   *   Array of fields.
   */
  protected function alterFieldList(&$fields) {
    $fields[] = 'row_hash';
  }

  /**
   * Alter the list of values after read from the file.
   *
   * @param $row_string
   *   The raw row as a string from the file.
   * @param $row_array
   *   Array of exploded values.
   * @param $values
   *   Key / value array of data.
   */
  protected function alterValues($row_string, $row_array, &$values) {
    $values['row_hash'] = sha1($row_string);
  }

}
