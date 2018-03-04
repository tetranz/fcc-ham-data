<?php

namespace Drupal\fcc_ham_data\Plugin\Importer;

/**
 * Plugin class for EN file importer.
 *
 * @FccImporter(
 *   id = "en",
 *   name = @Translation("Importer for FCC EN file")
 * )
 */
class ImporterFccEn extends ImporterBase {

  /**
   * (@inheritdoc}
   */
  public function getTableId() {
    return 'en';
  }

  /**
   * (@inheritdoc}
   */
  protected function alterFieldList(&$fields) {
    parent::alterFieldList($fields);
    $fields[] = 'address_hash';
  }

  /**
   * (@inheritdoc}
   */
  protected function alterValues($row_string, $row_array, &$values) {
    parent::alterValues($row_string, $row_array, $values);

    // Hash just the address fields. This is used to help know when we need to
    // geocode again.
    $values['address_hash'] = sha1(
      $values['street_address'] .
      $values['city'] .
      $values['state'] .
      $values['zip_code'] .
      $values['po_box']
    );
  }

}
