# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-Logging';
abstract 'A glimpse at an Enlightened Perl (Logging modules).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/Logging.pm';
license 'perl';

feature 'Log::Dispatch',
  -default         => 1,
  'Log::Dispatch'  => 0,
  ;

feature 'Log::Log4perl',
  -default         => 1,
  'Log::Log4perl'  => 0,
  ;

feature 'Log::Contextual',
  -default         => 1,
  'Log::Contextual'  => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
