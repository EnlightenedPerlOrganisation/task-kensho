# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-ExcelCSV';
abstract 'A glimpse at an Enlightened Perl (modules for Excel / CSV files).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/ExcelCSV.pm';
license 'perl';

feature 'Text::CSV_XS',
  -default                          => 1,
  'Text::CSV_XS'                    => 0,
  ;

feature 'Spreadsheet::ParseExcel::Simple',
  -default                          => 1,
  'Spreadsheet::ParseExcel::Simple' => 0,
  ;

feature 'Spreadsheet::WriteExcel::Simple',
  -default                          => 1,
  'Spreadsheet::WriteExcel::Simple' => 0,
  ;


auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
