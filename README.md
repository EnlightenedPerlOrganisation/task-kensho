# NAME

Task::Kensho - A Glimpse at an Enlightened Perl

# VERSION

version 0.34004

# SYNOPSIS

    > cpanm --interactive Task::Kensho

# DESCRIPTION

From [http://en.wikipedia.org/wiki/Kensho](http://en.wikipedia.org/wiki/Kensho):

> Kenshō (見性) (C. Wu) is a Japanese term for enlightenment
> experiences - most commonly used within the confines of Zen
> Buddhism - literally meaning "seeing one's nature"\[1\] or "true
> self."\[2\] It generally "refers to the realization of nonduality of
> subject and object."\[3\]

[Task::Kensho](https://metacpan.org/pod/Task::Kensho) is a first cut at building a list of recommended modules
for Enlightened Perl development. CPAN is wonderful, but there are too
many wheels and you have to pick and choose amongst the various
competing technologies.

The plan is for [Task::Kensho](https://metacpan.org/pod/Task::Kensho) to be a rough testing ground for ideas that
go into among other things the Enlightened Perl Organisation Extended
Core (EPO-EC).

The modules that are bundled by [Task::Kensho](https://metacpan.org/pod/Task::Kensho) are broken down into
several categories and are still being considered. They are all taken
from various top 100 most used perl modules lists and from discussions
with various subject matter experts in the Perl Community. That said,
this bundle does _not_ follow the guidelines established for the EPO-EC
for peer review via industry advisers.

Starting in 2011, [Task::Kensho](https://metacpan.org/pod/Task::Kensho) split its sub-groups of modules into
individually-installable tasks.  Each [Task::Kensho](https://metacpan.org/pod/Task::Kensho) sub-task is listed at the
beginning of its section in this documentation.

When installing [Task::Kensho](https://metacpan.org/pod/Task::Kensho) itself, you will be asked to install each
sub-task in turn, or you can install individual tasks separately. These
individual tasks will always install all their modules by default. This
facilitates the ease and simplicity the distribution aims to achieve.

# RECOMMENDED MODULES

## [Task::Kensho::Async](https://metacpan.org/pod/Task::Kensho::Async): Async Programming

### 

[POE](https://metacpan.org/pod/POE)

Multitasking and networking framework for Perl

## [Task::Kensho::CLI](https://metacpan.org/pod/Task::Kensho::CLI): Useful Command-line Tools

### 

[App::Ack](https://metacpan.org/pod/App::Ack)

A grep-like text finder

[App::Nopaste](https://metacpan.org/pod/App::Nopaste)

Easy access to any pastebin

[App::perlbrew](https://metacpan.org/pod/App::perlbrew)

Manage perl installations in your $HOME

[Devel::REPL](https://metacpan.org/pod/Devel::REPL)

A modern perl interactive shell

[Module::CoreList](https://metacpan.org/pod/Module::CoreList)

What modules shipped with versions of perl

## [Task::Kensho::Config](https://metacpan.org/pod/Task::Kensho::Config): Config Modules

### 

[Config::Any](https://metacpan.org/pod/Config::Any)

Load configuration from different file formats, transparently

[Config::General](https://metacpan.org/pod/Config::General)

Generic Config Module

## [Task::Kensho::DBDev](https://metacpan.org/pod/Task::Kensho::DBDev): Database Development

### 

[DBD::SQLite](https://metacpan.org/pod/DBD::SQLite)

Self Contained RDBMS in a DBI Driver

[DBI](https://metacpan.org/pod/DBI)

Database independent interface for Perl

[DBIx::Class](https://metacpan.org/pod/DBIx::Class)

Extensible and flexible object <-> relational mapper.

[DBIx::Class::Schema::Loader](https://metacpan.org/pod/DBIx::Class::Schema::Loader)

Dynamic definition of a DBIx::Class::Schema

[SQL::Translator](https://metacpan.org/pod/SQL::Translator)

Manipulate structured data definitions (SQL and more)

## [Task::Kensho::Dates](https://metacpan.org/pod/Task::Kensho::Dates): Date Modules

### 

[Date::Tiny](https://metacpan.org/pod/Date::Tiny)

A date object with as little code as possible

[DateTime](https://metacpan.org/pod/DateTime)

A date and time object

[DateTime::Tiny](https://metacpan.org/pod/DateTime::Tiny)

A date object with as little code as possible

[Time::ParseDate](https://metacpan.org/pod/Time::ParseDate)

Date parsing both relative and absolute

[Time::Tiny](https://metacpan.org/pod/Time::Tiny)

A time object with as little code as possible

## [Task::Kensho::Email](https://metacpan.org/pod/Task::Kensho::Email): Email

### 

[Email::MIME::Kit](https://metacpan.org/pod/Email::MIME::Kit)

The Swiss army chainsaw of assembling email messages

[Email::Sender](https://metacpan.org/pod/Email::Sender)

A library for sending email

[Email::Simple](https://metacpan.org/pod/Email::Simple)

A __simple__ email object. No, really!

[Email::Valid](https://metacpan.org/pod/Email::Valid)

Check validity of Internet email addresses

## [Task::Kensho::ExcelCSV](https://metacpan.org/pod/Task::Kensho::ExcelCSV): Excel/CSV

### 

[Spreadsheet::ParseExcel::Simple](https://metacpan.org/pod/Spreadsheet::ParseExcel::Simple)

A simple interface to Excel data

[Spreadsheet::WriteExcel::Simple](https://metacpan.org/pod/Spreadsheet::WriteExcel::Simple)

Create Excel documents easily

[Text::CSV\_XS](https://metacpan.org/pod/Text::CSV_XS)

Manipulate comma-separated values (CSV)

## [Task::Kensho::Exceptions](https://metacpan.org/pod/Task::Kensho::Exceptions): Exception Handling

### 

[Try::Tiny](https://metacpan.org/pod/Try::Tiny)

Lightweight exception handling that handles the vagaries of $@.

[TryCatch](https://metacpan.org/pod/TryCatch)

Flexible exception handling without source filters, handles $@ properly.

[autodie](https://metacpan.org/pod/autodie)

Make builtins and other functions die instead of returning undef on failure.

## [Task::Kensho::Hackery](https://metacpan.org/pod/Task::Kensho::Hackery): Script Hackery

These packages are included less for production work and more for whippitupitude. They reflect packages that people have found incredibly useful for prototyping and debugging before reducing down to a production script.

### 

[IO::All](https://metacpan.org/pod/IO::All)

IO::All combines all of the best Perl IO modules into a single nifty object oriented interface to greatly simplify your everyday Perl IO idioms.

[Smart::Comments](https://metacpan.org/pod/Smart::Comments)

Comments that do more than just sit there

[Term::ProgressBar::Simple](https://metacpan.org/pod/Term::ProgressBar::Simple)

Simple progress bars

## [Task::Kensho::Logging](https://metacpan.org/pod/Task::Kensho::Logging): Logging

### 

[Log::Contextual](https://metacpan.org/pod/Log::Contextual)

Log::Contextual is a simple interface to extensible logging.  It is bundled with a really basic logger, Log::Contextual::SimpleLogger.

[Log::Dispatch](https://metacpan.org/pod/Log::Dispatch)

This module manages a set of Log::Dispatch::\* output objects that can be logged to via a unified interface.

[Log::Log4perl](https://metacpan.org/pod/Log::Log4perl)

Log::Log4perl lets you remote-control and fine-tune the logging behaviour of your system from the outside. It implements the widely popular (Java-based) Log4j logging package in pure Perl.

## [Task::Kensho::ModuleDev](https://metacpan.org/pod/Task::Kensho::ModuleDev): Module Development

### 

[CPAN::Uploader](https://metacpan.org/pod/CPAN::Uploader)

Upload things to the CPAN

[Carp::Always](https://metacpan.org/pod/Carp::Always)

Warns and dies noisily with stack backtraces

[Devel::NYTProf](https://metacpan.org/pod/Devel::NYTProf)

Powerful feature-rich perl source code profiler

[Dist::Zilla](https://metacpan.org/pod/Dist::Zilla)

Builds distributions of code to be uploaded to the CPAN.

[Modern::Perl](https://metacpan.org/pod/Modern::Perl)

enable all of the features of Modern Perl with one command

[Module::Install](https://metacpan.org/pod/Module::Install)

Standalone, extensible Perl module installer

[Perl::Critic](https://metacpan.org/pod/Perl::Critic)

Critique Perl source code for best-practices.

[Perl::Tidy](https://metacpan.org/pod/Perl::Tidy)

Parses and beautifies perl source

[Perl::Version](https://metacpan.org/pod/Perl::Version)

Parse and manipulate Perl version strings

[Pod::Readme](https://metacpan.org/pod/Pod::Readme)

Convert POD to README file

[Software::License](https://metacpan.org/pod/Software::License)

Packages that provide templated software licenses

## [Task::Kensho::OOP](https://metacpan.org/pod/Task::Kensho::OOP): Object Oriented Programming

### 

[Task::Moose](https://metacpan.org/pod/Task::Moose)

Moose is a postmodern object system for Perl5. Task::Moose installs Moose and optionally a list of recommended modules that extend Moose.

## [Task::Kensho::Scalability](https://metacpan.org/pod/Task::Kensho::Scalability): Scalability

### 

[CHI](https://metacpan.org/pod/CHI)

A unified cache interface, like DBI

## [Task::Kensho::Testing](https://metacpan.org/pod/Task::Kensho::Testing): Testing

### 

[Devel::Cover](https://metacpan.org/pod/Devel::Cover)

Code coverage metrics for Perl

[Test::Deep](https://metacpan.org/pod/Test::Deep)

Test deep data structures

[Test::Fatal](https://metacpan.org/pod/Test::Fatal)

Test exception-based code

[Test::Memory::Cycle](https://metacpan.org/pod/Test::Memory::Cycle)

Check for memory leaks and circular memory references

[Test::Most](https://metacpan.org/pod/Test::Most)

Most commonly needed test functions and features.

[Test::NoWarnings](https://metacpan.org/pod/Test::NoWarnings)

Ensure that no (unexpected) warnings occur during testing

[Test::Pod](https://metacpan.org/pod/Test::Pod)

Check for POD errors in files

[Test::Pod::Coverage](https://metacpan.org/pod/Test::Pod::Coverage)

Check for pod coverage in your distribution.

[Test::Requires](https://metacpan.org/pod/Test::Requires)

Make running a test conditional on a particular module being installed

[Test::Simple](https://metacpan.org/pod/Test::Simple)

Basic utilities for writing tests.

## [Task::Kensho::Toolchain](https://metacpan.org/pod/Task::Kensho::Toolchain): Basic Toolchain

### 

[App::cpanminus](https://metacpan.org/pod/App::cpanminus)

Get, unpack, build and install modules from CPAN

[local::lib](https://metacpan.org/pod/local::lib)

Create and use a local lib/ for perl modules with PERL5LIB

[version](https://metacpan.org/pod/version)

Perl extension for Version Objects

## [Task::Kensho::WebCrawling](https://metacpan.org/pod/Task::Kensho::WebCrawling): Web Crawling

### 

[HTTP::Lite](https://metacpan.org/pod/HTTP::Lite)

Lightweight HTTP client implementation

[LWP::Simple](https://metacpan.org/pod/LWP::Simple)

Simple procedural interface to LWP

[LWP::UserAgent](https://metacpan.org/pod/LWP::UserAgent)

Full-featured Web client library for Perl

[WWW::Mechanize](https://metacpan.org/pod/WWW::Mechanize)

Handy web browsing in a Perl object

[WWW::Mechanize::TreeBuilder](https://metacpan.org/pod/WWW::Mechanize::TreeBuilder)

This module combines WWW::Mechanize and HTML::TreeBuilder.

## [Task::Kensho::WebDev](https://metacpan.org/pod/Task::Kensho::WebDev): Web Development

### 

[CGI::FormBuilder::Source::Perl](https://metacpan.org/pod/CGI::FormBuilder::Source::Perl)

Build CGI::FormBuilder configs from Perl syntax files.

[MIME::Types](https://metacpan.org/pod/MIME::Types)

Definition of MIME types

[Plack](https://metacpan.org/pod/Plack)

Flexible superglue between Web Servers and Perl Web Frameworks or code.

[Task::Catalyst](https://metacpan.org/pod/Task::Catalyst)

Catalyst is The Elegant MVC Web Application Framework. Task::Catalyst is all you need to start with Catalyst.

[Template::Toolkit](https://metacpan.org/pod/Template::Toolkit)

Template Processing System

[XML::Atom](https://metacpan.org/pod/XML::Atom)

Atom feed and API implementation

[XML::RSS](https://metacpan.org/pod/XML::RSS)

Creates and updates RSS files

## [Task::Kensho::XML](https://metacpan.org/pod/Task::Kensho::XML): XML Development

### 

[XML::Generator::PerlData](https://metacpan.org/pod/XML::Generator::PerlData)

Perl extension for generating SAX2 events from nested Perl data structures.

[XML::LibXML](https://metacpan.org/pod/XML::LibXML)

Perl Binding for libxml2

[XML::LibXSLT](https://metacpan.org/pod/XML::LibXSLT)

Interface to the gnome libxslt library

[XML::SAX](https://metacpan.org/pod/XML::SAX)

Simple/Streaming API for XML

[XML::SAX::Writer](https://metacpan.org/pod/XML::SAX::Writer)

Output XML from SAX2 Events

# INSTALLING

Since version 0.34, [Task::Kensho](https://metacpan.org/pod/Task::Kensho) has made use of the `optional_features` field
in distribution metadata. This allows CPAN clients to interact with you
regarding which modules you wish to install.

The `cpanm` client requires interactive mode to be enabled for this to work:

    cpanm --interactive Task-Kensho

# RELEASE SCHEDULE

Starting with release 0.18, [Task::Kensho](https://metacpan.org/pod/Task::Kensho) was moved to a monthly release
cycle. This will facilitate a consistent schedule for upstream vendors
to track the changes in [Task::Kensho](https://metacpan.org/pod/Task::Kensho).

# BUGS AND LIMITATIONS

This list is by no means comprehensive of the "Good" Modules on CPAN.
Nor is this necessarily the correct path for all developers. Each of
these modules has a perfectly acceptable replacement that may work
better for you. This is however a path to good perl practice, and a
starting place on the road to Enlightened Perl programming.

Please report any bugs or feature requests to
[https://github.com/EnlightenedPerlOrganisation/task-kensho/issues](https://github.com/EnlightenedPerlOrganisation/task-kensho/issues).

# SEE ALSO

[http://www.enlightenedperl.org/](http://www.enlightenedperl.org/),
[Perl::Dist::Strawberry](https://metacpan.org/pod/Perl::Dist::Strawberry)

# AUTHOR

Chris Prather <chris@prather.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2008 by Chris Prather.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
