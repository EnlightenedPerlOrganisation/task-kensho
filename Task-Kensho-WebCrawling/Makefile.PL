# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-WebCrawling';
abstract 'A glimpse at an Enlightened Perl (web crawling).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/WebCrawling.pm';
license 'perl';

feature 'HTTP::Lite',
  -default                      => 1,
  'HTTP::Lite'                  => 0,
  ;

feature 'LWP::UserAgent',
  -default                      => 1,
  'LWP::UserAgent'              => 0,
  ;

feature 'LWP::Simple',
  -default                      => 1,
  'LWP::Simple'                 => 0,
  ;

feature 'WWW::Mechanize',
  -default                      => 1,
  'WWW::Mechanize'              => 0,
  ;

feature 'WWW::Mechanize::TreeBuilder',
  -default                      => 1,
  'WWW::Mechanize::TreeBuilder' => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
