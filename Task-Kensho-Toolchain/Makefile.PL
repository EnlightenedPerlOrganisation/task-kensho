# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-Toolchain';
abstract 'A glimpse at an Enlightened Perl (basic toolchain).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/Toolchain.pm';
license 'perl';

feature 'App::cpanminus',
  -default         => 1,
  'App::cpanminus' => 0,
  ;

feature 'local::lib',
  -default         => 1,
  'local::lib'     => 0,
  ;

feature 'version',
  -default         => 1,
  'version'        => 0,
  ;


auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
