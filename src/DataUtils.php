<?php

namespace Drupal\fcc_ham_data;

use Drupal\Core\Database\Connection;
use Drupal\Core\Database\Database;
use Psr\Log\LoggerInterface;

/**
 * A few data utilities for the imported FCC data.
 */
class DataUtils {

  /**
   * The database connnection.
   *
   * @var \Drupal\Core\Database\Connection
   */
  private $dbConnection;

  /**
   * The logger.
   *
   * @var \Psr\Log\LoggerInterface
   */
  private $logger;

  /**
   * EntityUpdater constructor.
   *
   * @param \Drupal\Core\Database\Connection $db_connection
   *   The database connnection.
   * @param LoggerInterface $logger
   *   The logger.
   */
  public function __construct(Connection $db_connection, LoggerInterface $logger) {
    $this->dbConnection = $db_connection;
    $this->logger = $logger;
  }

  /**
   * Update the hash for the joined table result.
   *
   * @param callable $callback
   *   Optional callable used to report progress.
   */
  public function updateHash(callable $callback = NULL) {
    // Calculate and update a hash for the joined table result to use when
    // updating the entity. Note: MySQL specific code.

    $sql = '
    UPDATE fcc_license_hd hd
    INNER JOIN fcc_license_en en ON en.unique_system_identifier = hd.unique_system_identifier
    INNER JOIN fcc_license_am am ON am.unique_system_identifier = hd.unique_system_identifier
    SET hd.total_hash = SHA1(CONCAT(hd.row_hash, en.row_hash, am.row_hash))';
    
    $row_count = $this->dbConnection->query($sql, [], ['return' => Database::RETURN_AFFECTED]);

    $msg = sprintf('%s hashes updated', $row_count);
    $this->logger->info($msg);

    if ($callback !== NULL) {
      $callback($msg);
    }
  }

}
