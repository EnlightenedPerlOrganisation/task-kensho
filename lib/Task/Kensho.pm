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

=item  Bundle::CPAN

Bundle to optimize the behaviour of CPAN.pm

=item  local::lib

Create and use a local lib/ for perl modules with PERL5LIB 

=item version

Perl extension for Version Objects 

=back

=head2 Testing

=over 

=item Test::Simple

Basic utilities for writing tests.

=item Test::Most

Most commonly needed test functions and features.

=item Test::Exception

Test exception based code 

=item Test::Pod

Check for POD errors in files

=item Test::Pod::Coverage

Check for pod coverage in your distribution.

=item Test::Memory::Cycle

Check for memory leaks and circular memory references

=item Devel::Cover

Code coverage metrics for Perl

=back

=head2 Object Oriented Programming

=over 

=item  Moose

A postmodern object system for Perl 5 

=item MooseX::Types

Organise your Moose types in libraries

=item  Moose::Autobox

Autoboxed wrappers for Native Perl datatypes 

=item MooseX::Aliases

Easy aliasing of methods and attributes in Moose

=item  MooseX::Storage

An serialization framework for Moose classes 

=item  MooseX::Getopt

A Moose role for processing command line options 

=item MooseX::SimpleConfig

A Moose role for setting attributes from a simple configfile

=item MooseX::StrictConstructor

Make your object constructors blow up on unknown attributes

=item  namespace::autoclean

Keep imports and functions out of your namespace 

=back

=head2 Asynchronous Programming

=over 

=item  POE

Multitasking and networking framework for Perl 

=back

=head2 XML Development

=over 

=item XML::LibXML

Perl Binding for libxml2

=item XML::SAX

Simple/Streaming API for XML

=item XML::Generator::PerlData

Perl extension for generating SAX2 events from nested Perl data
structures.

=item XML::SAX::Writer

Output XML from SAX2 Events

=back

=head2 Web Development

=over

=item Catalyst 

The Elegant MVC Web Application Framework 

=item Catalyst::View::TT

Template View Class 

=item Catalyst::Model::DBIC::Schema

DBIx::Class::Schema Model Class

=item Catalyst::Devel

Catalyst Development Tools 

=item Catalyst::Plugin::Session

Generic Session plugin - ties together server side storage and client
side state required to maintain session data.

=item Catalyst::Plugin::Authentication

Infrastructure plugin for the Catalyst authentication framework

=item Catalyst::Plugin::StackTrace

Display a stack trace on the debug screen 

=item Catalyst::Plugin::FillInForm

Fill forms automatically, based on data from a previous HTML form. 

=item Catalyst::Plugin::FormValidator

=item Catalyst::Plugin::Session::State::Cookie

Maintain session IDs using cookies.

=item Catalyst::Plugin::Session::Store::DBIC

=item Catalyst::Plugin::Static::Simple

=item Catalyst::View::JSON

=back 

=head2 Web Crawling

=over

=item Bundle::LWP

Install all libwww-perl related modules

=item LWP::Simple

Simple procedural interface to LWP 

=item WWW::Mechanize

Handy web browsing in a Perl object 

=back

=head2 Database Development

=over 

=item DBI

Database independent interface for Perl 

=item DBD::SQLite

Self Contained RDBMS in a DBI Driver 

=item DBIx::Class

Extensible and flexible object <-> relational mapper. 

=item DBIx::Class::Schema::Loader

Dynamic definition of a DBIx::Class::Schema 

=item SQL::Translator

Manipulate structured data definitions (SQL and more) 

=back

=head2 Excel / CSV

=over 

=item Text::CSV_XS

Manipulate comma-separated values (CSV) 

=item Spreadsheet::ParseExcel::Simple

A simple interface to Excel data

=item Spreadsheet::WriteExcel::Simple

Create Excel documents easily

=back

=head2 Module Development

=over

=item Dist::Zilla

Builds distributions of code to be uploaded to the CPAN. 

=item Module::Install

Standalone, extensible Perl module installer 

=item Devel::NYTProf

Powerful feature-rich perl source code profiler 

=item Perl::Tidy

Parses and beautifies perl source

=item Perl::Critic

Critique Perl source code for best-practices.

=item Carp::Always

Warns and dies noisily with stack backtraces

=item Modern::Perl

enable all of the features of Modern Perl with one command 

=item Perl::Version 

Parse and manipulate Perl version strings

=item Software::License

Packages that provide templated software licenses

=item Pod::Readme

Convert POD to README file

=back

=head2 Date Modules

=over

=item DateTime

A date and time object 

=item Date::Tiny

A date object with as little code as possible 

=item Time::Tiny

A time object with as little code as possible 

=item DateTime::Tiny

A date object with as little code as possible 

=item Time::ParseDate

Date parsing both relative and absolute

=back

=head2 Config Modules

=over

=item Config::Any

Load configuration from different file formats, transparently 

=item Config::General

Generic Config Module 

=back

=head2 Useful Command-line Tools

=over

=item App::Ack

A grep-like text finder

=item App::Nopaste

Easy access to any pastebin

=item Devel::REPL

A modern perl interactive shell 

=item Module::Corelist

What modules shipped with versions of perl 

=back

=head2 Script Hackery

These packages are included less for production work and more for
whippitupitude. They reflect packages that people have found incredibly
useful for prototyping and debugging before reducing down to a
production script.

=over

=item Smart::Comments

Comments that do more than just sit there 

=item Term::ProgressBar::Simple

=item IO::All

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

L<http://www.enlightenedperl.org/>, L<Perl::Dist::Strawberry>

=head1 AUTHOR

Chris Prather  C<< <chris@prather.org> >>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2008, 2009, Chris Prather  C<< <chris@prather.org> >>. Some rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

