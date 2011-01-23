# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-CLI';
abstract 'A glimpse at an Enlightened Perl (CLI Tools).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/CLI.pm';
license 'perl';

feature 'App::Ack',
  -default                   => 1,
  'App::Ack'                 => 0,
  ;

feature 'App::Nopaste',
  -default                   => 1,
  'App::Nopaste'             => 0,
  ;

feature 'Devel::REPL',
  -default                   => 1,
  'Devel::REPL'              => 0,
  ;

feature 'Module::CoreList',
  -default                   => 1,
  'Module::CoreList'         => 0,
  ;

feature 'App::perlbrew',
  -default                   => 1,
  'App::perlbrew'            => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
