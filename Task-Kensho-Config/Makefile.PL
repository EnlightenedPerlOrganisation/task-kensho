# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-Config';
abstract 'A glimpse at an Enlightened Perl (Config-handling Modules).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/Config.pm';
license 'perl';

feature 'Config::Any',
  -default          => 1,
  'Config::Any'     => 0,
  ;

feature 'Config::General',
  -default          => 1,
  'Config::General' => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
