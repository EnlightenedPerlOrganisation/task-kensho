# require a modern perl
use 5.8.2;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

BEGIN { $ENV{NYTPROF} = 'start=no'; }

# Define metadata
name 'Task-Kensho';
abstract 'A glimpse at an Enlightened Perl.';
author 'Chris Prather <chris@prather.org>';
version_from 'lib/Task/Kensho.pm';
license 'perl';

feature 'Basic Toolchain',
  -default       => 1,
  'App::cpanminus' => 0,
  'local::lib'   => 0,
  'version'      => 0,
  ;

feature 'Testing',
  -default              => 1,
  'Test::Simple'        => 0,
  'Test::Most'          => 0,
  'Test::Exception'     => 0,
  'Test::Pod'           => 0,
  'Test::Pod::Coverage' => 0,
  'Test::Memory::Cycle' => 0,
  'Devel::Cover'        => 0,
  ;

feature 'Exception Handling',
  -default    => 1,
  'Try::Tiny' => 0,
  'TryCatch'  => 0,
  ;

feature 'Object Oriented Programming',
  -default      => 1,
  'Task::Moose' => 0,
  ;

feature 'Asynchronous Programming',
  -default => 0,
  'POE'    => 0,
  ;

feature 'XML Development',
  -default                   => 0,
  'XML::LibXML'              => 0,
  'XML::LibXSLT'             => 0,
  'XML::SAX'                 => 0,
  'XML::Generator::PerlData' => 0,
  'XML::SAX::Writer'         => 0,
  ;

feature 'Web Development',
  -default                         => 0,
  'Task::Catalyst'                 => 0,
  'Template'                       => 0,
  'CGI::FormBuilder::Source::Perl' => 0,
  'XML::RSS'                       => 0,
  'XML::Atom'                      => 0,
  'MIME::Types'                    => 0,
  ;

feature 'Web Crawling',
  -default                      => 0,
  'HTTP::Lite'                  => 0,
  'Bundle::LWP'                 => 0,
  'LWP::Simple'                 => 0,
  'WWW::Mechanize'              => 0,
  'WWW::Mechanize::TreeBuilder' => 0,
  ;

feature 'Database Development',
  -default                      => 0,
  'DBI'                         => 0,
  'DBD::SQLite'                 => 0,
  'DBIx::Class'                 => 0,
  'DBIx::Class::Schema::Loader' => 0,
  'SQL::Translator'             => 0,
  ;

feature 'Excel / CSV',
  -default                          => 0,
  'Text::CSV_XS'                    => 0,
  'Spreadsheet::ParseExcel::Simple' => 0,
  'Spreadsheet::WriteExcel::Simple' => 0,
  ;

feature 'Module Development',
  -default            => 0,
  'Dist::Zilla'       => 0,
  'Module::Install'   => 0,
  'Devel::NYTProf'    => 0,
  'Perl::Tidy'        => 0,
  'Perl::Critic'      => 0,
  'Carp::Always'      => 0,
  'Modern::Perl'      => 0,
  'Perl::Version'     => 0,
  'Software::License' => 0,
  'Pod::Readme'       => 0,
  'CPAN::Uploader'    => 0,
  ;

feature 'Email Modules',
  -default        => 0,
  'Email::Valid'  => 0,
  'Email::Sender' => 0,
  ;

feature 'Date Modules',
  -default          => 0,
  'DateTime'        => 0,
  'Date::Tiny'      => 0,
  'Time::Tiny'      => 0,
  'DateTime::Tiny'  => 0,
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
  'Module::CoreList' => 0,
  'App::perlbrew' => 0,
  ;

feature 'Script Hackery',
  -default                    => 0,
  'Smart::Comments'           => 0,
  'Term::ProgressBar::Simple' => 0,
  'IO::All'                   => 0,
  ;

auto_set_repository;
auto_manifest;
auto_install;
WriteAll;
