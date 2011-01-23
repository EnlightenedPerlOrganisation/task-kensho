package Task::Kensho;
use strict;
our $VERSION = '0.28';

__END__

=encoding utf-8

=head1 NAME

Task::Kensho - A Glimpse at an Enlightened Perl

=head1 VERSION

This document describes Task::Kensho version 0.28

=head1 SYNOPSIS

    > cpan Task::Kensho

=head1 DESCRIPTION,

From L<http://en.wikipedia.org/wiki/Kensho>:

    Kenshō (見性) (C. Wu) is a Japanese term for enlightenment
    experiences—most commonly used within the confines of Zen
    Buddhism—literally meaning "seeing one's nature"[1] or "true
    self."[2] It generally "refers to the realization of nonduality of
    subject and object."[3]

Task::Kensho is a first cut at building a list of recommended modules
for Enlightened Perl development. CPAN is wonderful, but there are too
many wheels and you have to pick and choose amongst the various
competing technologies.

The plan is for Task::Kensho to be a rough testing ground for ideas that
go into among other things the Enlightened Perl Organisation Extended
Core (EPO-EC).

The modules that are bundled by Task::Kensho are broken down into
several categories and are still being considered. They are all taken
from various top 100 most used perl modules lists and from discussions
with various subject matter experts in the Perl Community. That said,
this bundle does I<not> follow the guidelines established for the EPO-EC
for peer review via industry advisers.

Starting in 2011, Task::Kensho split its sub-groups of modules into
individually-installable tasks. These individual tasks will always install all
their modules by default. This facilitates the ease and simplicity the
distribution aims to achieve. Each Task::Kensho sub-task is listed at the
beginning of its section in this documentation.

=head2 Basic Toolchain: Task::Kensho::Toolchain

=over

=item L<App::cpanminus>

Get, unpack, build and install modules from CPAN

=item L<local::lib|local::lib>

Create and use a local lib/ for perl modules with PERL5LIB

=item L<version|version>

Perl extension for Version Objects

=back

=head2 Testing: Task::Kensho::Testing

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

=head2 Exception Handling: Task::Kensho::Exceptions

=over

=item L<Try::Tiny|Try::Tiny>

Lightweight exception handling that handles the vagaries of $@.

=item L<TryCatch|TryCatch>

Flexible exception handling without source filters, handles $@ properly.

=item L<autodie|autodie>

Make builtins and other functions die instead of returning undef on failure.

=back

=head2 Object Oriented Programming: Task::Kensho::OOP

=over

=item L<Task::Moose|Task::Moose>

Moose is a postmodern object system for Perl5. Task::Moose installs
Moose and optionally a list of recommended modules that extend Moose.

=back

=head2 Asynchronous Programming: Task::Kensho::Async

=over

=item L<POE>

Multitasking and networking framework for Perl

=back

=head2 XML Development: Task::Kensho::XML

=over

=item L<XML::LibXML|XML::LibXML>

Perl Binding for libxml2

=item L<XML::LibXSLT|XML::LibXSLT>

Interface to the gnome libxslt library

=item L<XML::SAX|XML::SAX>

Simple/Streaming API for XML

=item L<XML::Generator::PerlData|XML::Generator::PerlData>

Perl extension for generating SAX2 events from nested Perl data
structures.

=item L<XML::SAX::Writer|XML::SAX::Writer>

Output XML from SAX2 Events

=back

=head2 Web Development: Task::Kensho::WebDev

=over

=item L<Task::Catalyst|Task::Catalyst>

L<Catalyst|Catalyst> is The Elegant MVC Web Application Framework.
Task::Catalyst is all you need to start with Catalyst.

=item L<Template::Toolkit|Template::Toolkit>

Template Processing System

=item L<CGI::FormBuilder::Source::Perl|CGI::FormBuilder::Source::Perl>

Build CGI::FormBuilder configs from Perl syntax files.

=item L<XML::RSS|XML::RSS>

Creates and updates RSS files

=item L<XML::Atom|XML::Atom>

Atom feed and API implementation

=item L<MIME::Types|MIME::Types>

Definition of MIME types

=back

=head2 Web Crawling: Task::Kensho::WebCrawling

=over

=item L<HTTP::Lite|HTTP::Lite>

Lightweight HTTP client implementation

=item L<Bundle::LWP|Bundle::LWP>

Install all libwww-perl related modules

=item L<LWP::Simple|LWP::Simple>

Simple procedural interface to LWP

=item L<WWW::Mechanize|WWW::Mechanize>

Handy web browsing in a Perl object

=item L<WWW::Mechanize::TreeBuilder|WWW::Mechanize::TreeBuilder>

This module combines L<WWW::Mechanize|WWW::Mechanize> and
L<HTML::TreeBuilder|HTML::TreeBuilder>.

=back

=head2 Database Development: Task::Kensho::DBDev

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

=head2 Excel / CSV: Task::Kensho::ExcelCSV

=over

=item L<Text::CSV_XS|Text::CSV_XS>

Manipulate comma-separated values (CSV)

=item L<Spreadsheet::ParseExcel::Simple|Spreadsheet::ParseExcel::Simple>

A simple interface to Excel data

=item L<Spreadsheet::WriteExcel::Simple|Spreadsheet::WriteExcel::Simple>

Create Excel documents easily

=back

=head2 Module Development: Task::Kensho::ModuleDev

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

=item L<CPAN::Uploader|CPAN::Uploader>

Upload things to the CPAN

=back

=head2 Email: Task::Kensho::Email

=over

=item L<Email::Simple|Email::Simple>

A B<simple> email object. No, really!

=item L<Email::Valid|Email::Valid>

Check validity of Internet email addresses

=item L<Email::Sender|Email::Sender>

A library for sending email

=item L<Email::MIME::Kit|Email::MIME::Kit>

The Swiss army chainsaw of assembling email messages

=back

=head2 Date Modules: Task::Kensho::Dates

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

=head2 Scalability: Task::Kensho::Scalability

=over

=item L<CHI>

A unified cache interface, like DBI

=back

=head2 Config Modules: Task::Kensho::Config

=over

=item L<Config::Any|Config::Any>

Load configuration from different file formats, transparently

=item L<Config::General|Config::General>

Generic Config Module

=back

=head2 Useful Command-line Tools: Task::Kensho::CLI

=over

=item L<App::Ack|App::Ack>

A grep-like text finder

=item L<App::Nopaste|App::Nopaste>

Easy access to any pastebin

=item L<Devel::REPL|Devel::REPL>

A modern perl interactive shell

=item L<Module::Corelist|Module::Corelist>

What modules shipped with versions of perl

=item L<App::perlbrew>

Manage perl installations in your $HOME

=back

=head2 Script Hackery: Task::Kensho::Hackery

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
better for you. This is however a path to good perl practics, and a
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

Copyright (c) 2008, 2009, Chris Prather C<< <chris@prather.org> >>. Some
rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.
