# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-ModuleDev';
abstract 'A glimpse at an Enlightened Perl (module development tools).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/ModuleDev.pm';
license 'perl';

feature 'Dist::Zilla',
  -default            => 1,
  'Dist::Zilla'       => 0,
  ;

feature 'Module::Install',
  -default            => 1,
  'Module::Install'   => 0,
  ;

feature 'Devel::NYTProf',
  -default            => 1,
  'Devel::NYTProf'    => 0,
  ;

feature 'Perl::Tidy',
  -default            => 1,
  'Perl::Tidy'        => 0,
  ;

feature 'Perl::Critic',
  -default            => 1,
  'Perl::Critic'      => 0,
  ;

feature 'Carp::Always',
  -default            => 1,
  'Carp::Always'      => 0,
  ;

feature 'Modern::Perl',
  -default            => 1,
  'Modern::Perl'      => 0,
  ;

feature 'Perl::Version',
  -default            => 1,
  'Perl::Version'     => 0,
  ;

feature 'Software::License',
  -default            => 1,
  'Software::License' => 0,
  ;

feature 'Pod::Readme',
  -default            => 1,
  'Pod::Readme'       => 0,
  ;

feature 'CPAN::Uploader',
  -default            => 1,
  'CPAN::Uploader'    => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
