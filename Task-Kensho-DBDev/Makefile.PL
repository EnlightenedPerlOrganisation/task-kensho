# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-DBDev';
abstract 'A glimpse at an Enlightened Perl (DB development).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/DBDev.pm';
license 'perl';

feature 'DBI',
  -default                      => 1,
  'DBI'                         => 0,
  ;

feature 'DBD::SQLite',
  -default                      => 1,
  'DBD::SQLite'                 => 0,
  ;

feature 'DBIx::Class',
  -default                      => 1,
  'DBIx::Class'                 => 0,
  ;

feature 'DBIx::Class::Schema::Loader (DBICSL)',
  -default                      => 1,
  'DBIx::Class::Schema::Loader' => 0,
  ;

feature 'SQL::Translator',
  -default                      => 1,
  'SQL::Translator'             => 0,
  ;
  
auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
