# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-Dates';
abstract 'A glimpse at an Enlightened Perl (Date handling).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/Dates.pm';
license 'perl';

feature 'DateTime',
  -default          => 1,
  'DateTime'        => 0,
  ;

feature 'Date::Tiny',
  -default          => 1,
  'Date::Tiny'      => 0,
  ;

feature 'Time::Tiny',
  -default          => 1,
  'Time::Tiny'      => 0,
  ;

feature 'DateTime::Tiny',
  -default          => 1,
  'DateTime::Tiny'  => 0,
  ;

feature 'Time::ParseDate',
  -default          => 1,
  'Time::ParseDate' => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
