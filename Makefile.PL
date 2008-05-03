# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

# Define metadata
name 'Task-Kensho';
abstract 'A glipmse at an Englightened Perl.';
author 'Chris Prather <chris@prahter.org>';
version_from 'lib/Task/Kensho.pm';
license 'perl';

feature 'Basic Toolchain',
  -default       => 1,
  'Bundle::CPAN' => 0,
  'local::lib'   => 0,
  'version'      => 0,
  ;

feature 'Testing',
  -default              => 1,
  'Test::More'          => 0,
  'Test::Exception'     => 0,
  'Test::Pod'           => 0,
  'Test::Pod::Coverage' => 0,
  ;

feature 'Object Oriented Programming',
  -default                   => 0,
  'Moose'                    => 0,
  'Moose::Autobox'           => 0,
  'MooseX::AttributeHelpers' => 0,
  'MooseX::Storage'          => 0,
  'MooseX::Getopt'           => 0,
  ;

feature 'Asynchronous Programming',
  -default => 0,
  'POE'    => 0,
  ;

feature 'Web Development',
  -default                => 0,
  'Catalyst'              => 0,
  'Catalyst::View::TT'    => 0,
  'Catalyst::Model::DBIC' => 0,
  ;

feature 'Database Development',
  -default                       => 0,
  'DBI'                          => 0,
  'DBD::SQLite'                  => 0,
  'DBIx::Class'                  => 0,
  'DBIx::Class::Schema::Loader' => 0;

feature 'Web Crawling',
  -default         => 0,
  'Bundle::LWP'    => 0,
  'LWP::Simple'    => 0,
  'WWW::Mechanize' => 0,
  ;

feature 'Module Development',
  -default          => 0,
  'Module::Starter' => 0,
  'Module::Install' => 0,
  ;

auto_install;
WriteAll;
