# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-Scalability';
abstract 'A glimpse at an Enlightened Perl (scalability tools).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/Scalability.pm';
license 'perl';

feature 'CHI',
  -default          => 1,
  'CHI'             => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
