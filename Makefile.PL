# require a modern perl
use 5.8.2;

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
  'Test::Simple'        => 0,
  'Test::Exception'     => 0,
  'Test::Pod'           => 0,
  'Test::Pod::Coverage' => 0,
  'Test::Memory::Cycle' => 0,
  ;

feature 'Object Oriented Programming',
  -default                   => 0,
  'Moose'                    => 0,
  'Moose::Autobox'           => 0,
  'MooseX::AttributeHelpers' => 0,
  'MooseX::Storage'          => 0,
  'MooseX::Getopt'           => 0,
  'namespace::clean'         => 0,
  ;

feature 'Asynchronous Programming',
  -default => 0,
  'POE'    => 0,
  ;

feature 'Web Development',
  -default                           => 0,
  'Catalyst'                         => 0,
  'Catalyst::View::TT'               => 0,
  'Catalyst::Model::DBIC::Schema'    => 0,
  'Catalyst::Devel'                  => 0,
  'Catalyst::Plugin::Session'        => 0,
  'Catalyst::Plugin::Authentication' => 0,
  'Catalyst::Plugin::StackTrace'     => 0,
  ;

feature 'Database Development',
  -default                      => 0,
  'DBI'                         => 0,
  'DBD::SQLite'                 => 0,
  'DBIx::Class'                 => 0,
  'DBIx::Class::Schema::Loader' => 0,
  'SQL::Translator'             => 0,
  ;

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
  'Devel::NYTProf'  => 0,
  ;

## There is no clear winner here
## so we'll leave it out of 0.01
# feature 'Email Modules',
#   -default => 0,
#   ;

feature 'Date Modules',
  -default          => 0,
  'DateTime'        => 0,
  'Date::Tiny'      => 0,
  'Time::ParseDate' => 0,
  ;

feature 'Config Modules',
  -default          => 0,
  'Config::Any'     => 0,
  'Config::General' => 0,
  ;

feature 'Useful Command-line Tools',
  -default           => 0,
  'App::Ack'         => 0,
  'Devel::REPL'      => 0,
  'Module::Corelist' => 0,
  ;

feature 'Script Hackery',
  -default          => 0,
  'Smart::Comments' => 0,
  'IO::All'         => 0,
  'XXX'             => 0,
  ;

auto_install();
WriteAll;
