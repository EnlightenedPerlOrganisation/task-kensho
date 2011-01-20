# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-Exceptions';
abstract 'A glimpse at an Enlightened Perl (exception handling modules).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/Exceptions.pm';
license 'perl';

feature 'Try::Tiny',
  -default    => 1,
  'Try::Tiny' => 0,
  ;

feature 'TryCatch',
  -default    => 1,
  'TryCatch'  => 0,
  ;

feature 'autodie',
  -default    => 1,
  'autodie'   => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
