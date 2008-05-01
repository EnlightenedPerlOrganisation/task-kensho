# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

# Define metadata
name 'Task-Kensho';
abstract 'A glipmse at an Englightened Perl bundle.';
author 'Chris Prather <chris@prahter.org>';
version_from 'lib/Task/Kensho.pm';
license 'perl';

# TOP 10 Modules
requires 'File::Spec'     => 0;
requires 'Scalar::Util'   => 0;
requires 'Test::Pod'      => 0;
requires 'LWP::UserAgent' => 0;
requires 'DBI'            => 0;
requires 'URI'            => 0;
requires 'version'        => 0;

feature 'Testing',
  -default              => 1,
  'Test::More'          => 0,
  'Test::Exception'     => 0,
  'Test::Pod::Coverage' => 0;

# These are now more debateable

feature 'Moose',
  -default                   => 0,
  'Moose'                    => 0,
  'MooseX::AttributeHelpers' => 0,
  'Moose::Autobox'           => 0,
  'MooseX::Storage'          => 0,
  'MooseX::Getopt'           => 0,
  ;

feature 'Catalyst',
  -default   => 0,
  'Catalyst' => 0;

feature 'Template',
  -default   => 0,
  'Template' => 0;

feature 'DBD::SQLite',
  -default      => 0,
  'DBD::SQLite' => 0;

feature 'DBIx::Class',
  -default      => 0,
  'DBIx::Class' => 0;

feature 'LWP::Simple',
  -default      => 0,
  'LWP::Simple' => 0;

auto_install;
WriteAll;
