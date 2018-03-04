<?php

namespace Drupal\fcc_ham_data;

use Drupal\Core\Database\Connection;

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
   * EntityUpdater constructor.
   *
   * @param \Drupal\Core\Database\Connection $db_connection
   *   The database connnection.
   */
  public function __construct(Connection $db_connection) {
    $this->dbConnection = $db_connection;
  }

  /**
   * Update the hash for the joined table result. 
   */
  public function updateHash() {
    // Calculate and update a hash for the joined table result to use when
    // updating the entity. Note: MySQL specific code.

    $sql = '
UPDATE fcc_license_hd hd
INNER JOIN fcc_license_en en ON en.unique_system_identifier = hd.unique_system_identifier
INNER JOIN fcc_license_am am ON am.unique_system_identifier = hd.unique_system_identifier
SET hd.total_hash = SHA1(CONCAT(hd.row_hash, en.row_hash, am.row_hash))';
    
    $this->dbConnection->query($sql);
  }

}
