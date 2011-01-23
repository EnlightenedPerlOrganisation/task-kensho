# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho';
abstract 'A glimpse at an Enlightened Perl.';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho.pm';
license 'perl';

feature 'Basic Toolchain',
  -default       => 1,
  'Task::Kensho::Toolchain' => 0,
  ;

feature 'Testing',
  -default              => 1,
  'Task::Kensho::Testing' => 0,
  ;

feature 'Exception Handling',
  -default    => 1,
  'Task::Kensho::Exceptions' => 0,
  ;

feature 'Object Oriented Programming',
  -default      => 1,
  'Task::Kensho::OOP' => 0,
  ;

feature 'Asynchronous Programming',
  -default => 0,
  'Task::Kensho::Async'    => 0,
  ;

feature 'XML Development',
  -default                   => 0,
  'Task::Kensho::XML' => 0,
  ;

feature 'Web Development',
  -default                         => 0,
  'Task::Kensho::WebDev' => 0,
  ;

feature 'Web Crawling',
  -default                      => 0,
  'Task::Kensho::WebCrawling' => 0,
  ;

feature 'Database Development',
  -default                      => 0,
  'Task::Kensho::DBDev' => 0,
  ;

feature 'Excel / CSV',
  -default                          => 0,
  'Task::Kensho::ExcelCSV' => 0,
  ;

feature 'Module Development',
  -default            => 0,
  'Task::Kensho::ModuleDev' => 0,
  ;

feature 'Email Modules',
  -default           => 0,
  'Task::Kensho::Email' => 0,
  ;

feature 'Date Modules',
  -default          => 0,
  'Task::Kensho::Dates' => 0,
  ;

feature 'Scalability',
  -default          => 0,
  'Task::Kensho::Scalability' => 0,
  ;

feature 'Config Modules',
  -default          => 0,
  'Task::Kensho::Config' => 0,
  ;

feature 'Useful Command-line Tools',
  -default           => 0,
  'Task::Kensho::CLI' => 0,
  ;

feature 'Script Hackery',
  -default                    => 0,
  'Task::Kensho::Hackery' => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
