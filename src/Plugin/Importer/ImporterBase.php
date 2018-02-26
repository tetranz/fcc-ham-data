<?php

namespace Drupal\fcc_ham_data\Plugin\Importer;

use Drupal\Core\Database\Connection;
use Drupal\Core\Plugin\ContainerFactoryPluginInterface;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Drupal\Core\Plugin\ContextAwarePluginBase;

/**
 * Base class for importers.
 */
class ImporterBase extends ContextAwarePluginBase implements ImporterInterface, ContainerFactoryPluginInterface {
  /**
   * Database connection
   *
   * @var \Drupal\Core\Database\Connection
   */
  protected $dbConnection;

  /**
   * ImporterBase constructor.

   * {@inheritDoc}
   * @param \Drupal\Core\Database\Connection $db_connection
   */
  public function __construct(
    array $configuration, $plugin_id, $plugin_definition,
    Connection $db_connection
  ) {
    parent::__construct($configuration, $plugin_id, $plugin_definition);
    $this->dbConnection = $db_connection;
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
      $container->get('database')
    );
  }

  public function import($table_id, $file_path)
  {
    // TODO: Implement import() method.
  }

}
