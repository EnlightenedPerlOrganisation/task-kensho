# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-Hackery';
abstract 'A glimpse at an Enlightened Perl (script hackery).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/Hackery.pm';
license 'perl';

feature 'Smart::Comments',
  -default                    => 1,
  'Smart::Comments'           => 0,
  ;

feature 'Term::ProgressBar::Simple',
  -default                    => 1,
  'Term::ProgressBar::Simple' => 0,
  ;

feature 'IO::All',
  -default                    => 1,
  'IO::All'                   => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
