# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

# Define metadata
name 'Task-Kensho';
abstract 'A glipmse at an Englightened Perl bundle.';
author 'Chris Prather <chris@prahter.org>';
version_from 'lib/Task/Kensho.pm';
license 'perl';

# TOP 10 Modules
requires 'File::Spec'   => 0;
requires 'Scalar::Util' => 0;
requires 'version'      => 0;

feature 'Testing',
  -default              => 1,
  'Test::Pod'           => 0,
  'Test::More'          => 0,
  'Test::Exception'     => 0,
  'Test::Pod::Coverage' => 0;

# These are now more debateable

feature 'Object Oriented Programming',
  -default                   => 0,
  'Moose'                    => 0,
  'Moose::Autobox'           => 0,
  'MooseX::AttributeHelpers' => 0,
  'MooseX::Storage'          => 0,
  'MooseX::Getopt'           => 0,
  ;

feature 'Web Development',
  -default                => 0,
  'Catalyst'              => 0,
  'Catalyst::View::TT'    => 0,
  'Catalyst::Model::DBIC' => 0,
  ;

feature 'Databases',
  -default      => 0,
  'DBI'         => 0,
  'DBIx::Class' => 0,
  'DBD::SQLite' => 0,
  ;

feature 'Web Crawling',
  -default         => 0,
  'LWP::Simple'    => 0,
  'LWP::UserAgent' => 0,
  'URI'            => 0,
  ;

feature 'Module Distribution',
  -default          => 0,
  'Module::Install' => 0,
  ;

auto_install;
WriteAll;
