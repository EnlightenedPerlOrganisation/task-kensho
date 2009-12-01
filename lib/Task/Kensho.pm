package Task::Kensho;
use strict;
our $VERSION = '0.19';

__END__
=encoding utf-8

=head1 NAME

Task::Kensho - A Glimpse at an Enlightened Perl

=head1 VERSION

This document describes Task::Kensho version 0.11

=head1 SYNOPSIS

    > cpan Task::Kensho

=head1 DESCRIPTION,

From L<http://en.wikipedia.org/wiki/Kensho>:

    Kenshō (見性) (C. Wu) is a Japanese term for enlightenment
    experiences—most commonly used within the confines of Zen
    Buddhism—literally meaning "seeing one's nature"[1] or "true
    self."[2] It generally "refers to the realization of nonduality of
    subject and object."[3]
    
Task::Kensho is a first cut at building a list of reccomended modules
for Enlightened Perl development. CPAN is wonderful, but there are too
many wheels and you have to pick and choose amongst the various
competing technologies.

The plan is for Task::Kensho to be a rough testing ground for ideas that
go into among other things the Enlightned Perl Organisation Extended
Core (EPO-EC).

The modules that are bundled by Task::Kensho are broken down into
several categories and are still being considered. They are all taken
from various top 100 most used perl modules lists and from discussions
with various subject matter experts in the Perl Community. That said
this bundle does I<not> follow the guidelines established for the EPO-EC
for peer review via industry advisers.

=head2 Basic Toolchain

=over

=item L<Bundle::CPAN|Bundle::CPAN>

Bundle to optimize the behaviour of CPAN.pm

=item L<local::lib|local::lib>

Create and use a local lib/ for perl modules with PERL5LIB 

=item L<version|version>

Perl extension for Version Objects 

=back

=head2 Testing

=over 

=item L<Test::Simple|Test::Simple>

Basic utilities for writing tests.

=item L<Test::Most|Test::Most>

Most commonly needed test functions and features.

=item L<Test::Exception|Test::Exception>

Test exception based code 

=item L<Test::Pod|Test::Pod>

Check for POD errors in files

=item L<Test::Pod::Coverage|Test::Pod::Coverage>

Check for pod coverage in your distribution.

=item L<Test::Memory::Cycle|Test::Memory::Cycle>

Check for memory leaks and circular memory references

=item L<Devel::Cover|Devel::Cover>

Code coverage metrics for Perl

=back

=head2 Object Oriented Programming

=over 

=item L<Moose>

A postmodern object system for Perl 5 

=item L<MooseX::Types|MooseX::Types>

Organise your Moose types in libraries

=item L<Moose::Autobox|Moose::Autobox>

Autoboxed wrappers for Native Perl datatypes 

=item L<MooseX::Aliases|MooseX::Aliases>

Easy aliasing of methods and attributes in Moose

=item L<MooseX::Storage|MooseX::Storage>

An serialization framework for Moose classes 

=item L<MooseX::Getopt|MooseX::Getopt>

A Moose role for processing command line options 

=item L<MooseX::SimpleConfig|MooseX::SimpleConfig>

A Moose role for setting attributes from a simple configfile

=item L<MooseX::StrictConstructor|MooseX::StrictConstructor>

Make your object constructors blow up on unknown attributes

=item L<namespace::autoclean|namespace::autoclean>

Keep imports and functions out of your namespace 

=back

=head2 Asynchronous Programming

=over 

=item L<POE>

Multitasking and networking framework for Perl 

=back

=head2 XML Development

=over 

=item L<XML::LibXML|XML::LibXML>

Perl Binding for libxml2

=item L<XML::SAX|XML::SAX>

Simple/Streaming API for XML

=item L<XML::Generator::PerlData|XML::Generator::PerlData>

Perl extension for generating SAX2 events from nested Perl data
structures.

=item L<XML::SAX::Writer|XML::SAX::Writer>

Output XML from SAX2 Events

=back

=head2 Web Development

=over

=item L<Catalyst>

The Elegant MVC Web Application Framework 

=item L<Catalyst::View::TT|Catalyst::View::TT>

Template View Class 

=item L<Catalyst::Model::DBIC::Schema|Catalyst::Model::DBIC::Schema>

DBIx::Class::Schema Model Class

=item L<Catalyst::Devel|Catalyst::Devel>

Catalyst Development Tools 

=item L<Catalyst::Plugin::Session|Catalyst::Plugin::Session>

Generic Session plugin - ties together server side storage and client
side state required to maintain session data.

=item L<Catalyst::Plugin::Authentication|Catalyst::Plugin::Authentication>

Infrastructure plugin for the Catalyst authentication framework

=item L<Catalyst::Plugin::StackTrace|Catalyst::Plugin::StackTrace>

Display a stack trace on the debug screen 

=item L<Catalyst::Plugin::FillInForm|Catalyst::Plugin::FillInForm>

Fill forms automatically, based on data from a previous HTML form. 

=item L<Catalyst::Controller::FormBuilder|Catalyst::Controller::FormBuilder>

Create and validate forms in Catalyst

=item L<Catalyst::Plugin::Session::State::Cookie|Catalyst::Plugin::Session::State::Cookie>

Maintain session IDs using cookies.

=item L<Catalyst::Plugin::Session::Store::DBIC|Catalyst::Plugin::Session::Store::DBIC>

Store your sessions via DBIx::Class 

=item L<Catalyst::Plugin::Static::Simple|Catalyst::Plugin::Static::Simple>

Make serving static pages painless.

=item L<Catalyst::View::JSON|Catalyst::View::JSON>

Serve JSON through Catalyst

=back 

=head2 Web Crawling

=over

=item L<Bundle::LWP|Bundle::LWP>

Install all libwww-perl related modules

=item L<LWP::Simple|LWP::Simple>

Simple procedural interface to LWP 

=item L<WWW::Mechanize|WWW::Mechanize>

Handy web browsing in a Perl object 

=back

=head2 Database Development

=over 

=item L<DBI>

Database independent interface for Perl 

=item L<DBD::SQLite|DBD::SQLite>

Self Contained RDBMS in a DBI Driver 

=item L<DBIx::Class|DBIx::Class>

Extensible and flexible object <-> relational mapper. 

=item L<DBIx::Class::Schema::Loader|DBIx::Class::Schema::Loader>

Dynamic definition of a DBIx::Class::Schema 

=item L<SQL::Translator|SQL::Translator>

Manipulate structured data definitions (SQL and more) 

=back

=head2 Excel / CSV

=over 

=item L<Text::CSV_XS|Text::CSV_XS>

Manipulate comma-separated values (CSV) 

=item L<Spreadsheet::ParseExcel::Simple|Spreadsheet::ParseExcel::Simple>

A simple interface to Excel data

=item L<Spreadsheet::WriteExcel::Simple|Spreadsheet::WriteExcel::Simple>

Create Excel documents easily

=back

=head2 Module Development

=over

=item L<Dist::Zilla|Dist::Zilla>

Builds distributions of code to be uploaded to the CPAN. 

=item L<Module::Install|Module::Install>

Standalone, extensible Perl module installer 

=item L<Devel::NYTProf|Devel::NYTProf>

Powerful feature-rich perl source code profiler 

=item L<Perl::Tidy|Perl::Tidy>

Parses and beautifies perl source

=item L<Perl::Critic|Perl::Critic>

Critique Perl source code for best-practices.

=item L<Carp::Always|Carp::Always>

Warns and dies noisily with stack backtraces

=item L<Modern::Perl|Modern::Perl>

enable all of the features of Modern Perl with one command 

=item L<Perl::Version|Perl::Version>

Parse and manipulate Perl version strings

=item L<Software::License|Software::License>

Packages that provide templated software licenses

=item L<Pod::Readme|Pod::Readme>

Convert POD to README file

=back

=head2 Date Modules

=over

=item L<DateTime>

A date and time object 

=item L<Date::Tiny|Date::Tiny>

A date object with as little code as possible 

=item L<Time::Tiny|Time::Tiny>

A time object with as little code as possible 

=item L<DateTime::Tiny|DateTime::Tiny>

A date object with as little code as possible 

=item L<Time::ParseDate|Time::ParseDate>

Date parsing both relative and absolute

=back

=head2 Config Modules

=over

=item L<Config::Any|Config::Any>

Load configuration from different file formats, transparently 

=item L<Config::General|Config::General>

Generic Config Module 

=back

=head2 Useful Command-line Tools

=over

=item L<App::Ack|App::Ack>

A grep-like text finder

=item L<App::Nopaste|App::Nopaste>

Easy access to any pastebin

=item L<Devel::REPL|Devel::REPL>

A modern perl interactive shell 

=item L<Module::Corelist|Module::Corelist>

What modules shipped with versions of perl 

=back

=head2 Script Hackery

These packages are included less for production work and more for
whippitupitude. They reflect packages that people have found incredibly
useful for prototyping and debugging before reducing down to a
production script.

=over

=item L<Smart::Comments|Smart::Comments>

Comments that do more than just sit there 

=item L<Term::ProgressBar::Simple|Term::ProgressBar::Simple>

Simple progress bars 

=item L<IO::All|IO::All>

IO::All combines all of the best Perl IO modules into a single nifty
object oriented interface to greatly simplify your everyday Perl IO
idioms.

=back

=head1 RELEASE SCHEDULE

Starting with release 0.18 Task::Kensho was moved to a monthly release
cycle. This will facilitate a consistent schedule for upstream vendors
to track the changes in Task::Kensho.

=head1 BUGS AND LIMITATIONS

This list is by no means comprehensive of the "Good" Modules on CPAN.
Nor is this neccessarily the correct path for all developers. Each of
these modules has a perfectly acceptable replacement that may work
better for you. This is however a path to good perl practicies, and a
starting place on the road to Enlightened Perl programming.

Please report any bugs or feature requests to
C<bug-task-kensho@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.

=head1 SEE ALSO

L<http://www.enlightenedperl.org/>, 
L<Perl::Dist::Strawberry|Perl::Dist::Strawberry>

=head1 AUTHOR

Chris Prather  C<< <chris@prather.org> >>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2008, 2009, Chris Prather  C<< <chris@prather.org> >>. Some rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

