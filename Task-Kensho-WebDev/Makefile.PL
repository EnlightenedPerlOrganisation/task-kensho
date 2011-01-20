# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-WebDev';
abstract 'A glimpse at an Enlightened Perl (web development).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/WebDev.pm';
license 'perl';

feature 'Catalyst',
  -default                         => 1,
  'Task::Catalyst'                 => 0,
  ;

feature 'Template Toolkit',
  -default                         => 1,
  'Template'                       => 0,
  ;

feature 'CGI::FormBuilder::Source::Perl',
  -default                         => 1,
  'CGI::FormBuilder::Source::Perl' => 0,
  ;

feature 'XML::RSS',
  -default                         => 1,
  'XML::RSS'                       => 0,
  ;

feature 'XML::Atom',
  -default                         => 1,
  'XML::Atom'                      => 0,
  ;

feature 'MIME::Types',
  -default                         => 1,
  'MIME::Types'                    => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
