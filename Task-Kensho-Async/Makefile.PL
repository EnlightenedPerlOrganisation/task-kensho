# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-Async';
abstract 'A glimpse at an Enlightened Perl (Async Programming).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/Async.pm';
license 'perl';

feature 'POE',
  -default => 1,
  'POE'    => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
