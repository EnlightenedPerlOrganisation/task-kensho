# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-OOP';
abstract 'A glimpse at an Enlightened Perl (OOP modules).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/OOP.pm';
license 'perl';

feature 'Moose',
  -default      => 1,
  'Task::Moose' => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
