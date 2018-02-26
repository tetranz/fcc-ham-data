<?php

namespace Drupal\fcc_ham_data\Plugin\Importer;

/**
 * Interface for all importers.
 */
interface ImporterInterface {

  /**
   * Import file into database table.
   * 
   * @param string $table_id
   *   Two letter FCC code for the file.
   *
   * @param $file_path
   *   File path for the file.
   */
  public function import($table_id, $file_path);

}
