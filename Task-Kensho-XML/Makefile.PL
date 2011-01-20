# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-XML';
abstract 'A glimpse at an Enlightened Perl (XML).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/XML.pm';
license 'perl';

feature 'XML::LibXML',
  -default                   => 1,
  'XML::LibXML'              => 0,
  ;

feature 'XML::LibXSLT',
  -default                   => 1,
  'XML::LibXSLT'             => 0,
  ;

feature 'XML::SAX',
  -default                   => 1,
  'XML::SAX'                 => 0,
  ;

feature 'XML::Generator::PerlData',
  -default                   => 1,
  'XML::Generator::PerlData' => 0,
  ;

feature 'XML::SAX::Writer',
  -default                   => 1,
  'XML::SAX::Writer'         => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
