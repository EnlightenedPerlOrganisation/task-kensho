# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho-Email';
abstract 'A glimpse at an Enlightened Perl (email modules).';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho/Email.pm';
license 'perl';

feature 'Email::Simple',
  -default           => 1,
  'Email::Simple',   => 0,
  ;

feature 'Email::Valid',
  -default           => 1,
  'Email::Valid'     => 0,
  ;

feature 'Email::Sender',
  -default           => 1,
  'Email::Sender'    => 0,
  ;

feature 'Email::MIME::Kit',
  -default           => 1,
  'Email::MIME::Kit' => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
