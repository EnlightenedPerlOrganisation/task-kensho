# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-Testing';
abstract 'A glimpse at an Enlightened Perl (testing tools).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/Testing.pm';
license 'perl';

feature 'Test::Simple',
  -default              => 1,
  'Test::Simple'        => 0,
  ;

feature 'Test::Most',
  -default              => 1,
  'Test::Most'          => 0,
  ;

feature 'Test::Exception',
  -default              => 1,
  'Test::Exception'     => 0,
  ;

feature 'Test::Pod',
  -default              => 1,
  'Test::Pod'           => 0,
  ;

feature 'Test::Pod::Coverage',
  -default              => 1,
  'Test::Pod::Coverage' => 0,
  ;

feature 'Test::Memory::Cycle',
  -default              => 1,
  'Test::Memory::Cycle' => 0,
  ;

feature 'Devel::Cover',
  -default              => 1,
  'Devel::Cover'        => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
