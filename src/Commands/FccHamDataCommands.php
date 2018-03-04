<?php

namespace Drupal\fcc_ham_data\Commands;

use Drupal\Component\Plugin\Exception\PluginNotFoundException;
use Drupal\fcc_ham_data\EntityUpdater;
use Drupal\fcc_ham_data\Plugin\Importer\ImporterInterface;
use Drupal\fcc_ham_data\Plugin\Importer\ImporterManager;
use Drush\Commands\DrushCommands;

/**
 * A Drush commandfile.
 */
class FccHamDataCommands extends DrushCommands {

  /**
   * The importer plugin manager.
   *
   * @var \Drupal\fcc_ham_data\Commands\ImporterManger
   */
  private $importerManager;

  /**
   * The entity updater.
   *
   * @var \Drupal\fcc_ham_data\EntityUpdater
   */
  private $entityUpdater;

  /**
   * FccHamDataCommands constructor.
   *
   * @param \Drupal\fcc_ham_data\Commands\ImporterManger $importer_manager
   *   The import manager.
   * @param EntityUpdater $entity_updater
   *   The entity updater.
   */
  public function __construct(ImporterManager $importer_manager, EntityUpdater $entity_updater) {
    $this->importerManager = $importer_manager;
    $this->entityUpdater = $entity_updater;
  }

  /**
   * Import data file.
   *
   * @param $file_type
   *   Two character FCC code.
   * @param $file_path
   *   Full path to the file..
   * @usage fcc_ham_data:import file_type file_path
   *   Usage description
   *
   * @command fcc_ham_data:import
   */
  public function import($file_type, $file_path) {

    try {
      /** @var ImporterInterface $importer */
      $importer = $this->importerManager->createInstance($file_type);
    }
    catch (PluginNotFoundException $ex) {
      throw new \InvalidArgumentException('Invalid file type: ' . $file_type);
    }

    if (!is_readable($file_path)) {
      throw new \InvalidArgumentException('File not found or not readable: ' . $file_path);
    }

    // Pass the writer to report progress.
    $importer->import($file_path, [$this->io(), 'writeln']);
  }

  /**
   * Update the hash for the joined query.
   *
   * @usage fcc_ham_data:update-hash
   *   Usage description
   *
   * @command fcc_ham_data:update-hash
   */
  public function updateHash() {
    $this->entityUpdater->updateHash();
  }
}
