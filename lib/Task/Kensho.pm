package Task::Kensho;
use strict;
our $VERSION = '0.0.1';

__END__

=head1 NAME

Task::Kensho - A Glimpse at an Enlightened Perl

=head1 VERSION

This document describes Task::Kensho version 0.0.1


=head1 SYNOPSIS

    > cpan Task::Kensho

=head1 DESCRIPTION,

From L<http://en.wikipedia.org/wiki/Kensho>:

    Kenshō (見性) (C. Wu) is a Japanese term for enlightenment experiences—most
    commonly used within the confines of Zen Buddhism—literally meaning
    "seeing one's nature"[1] or "true self."[2] It generally "refers to the
    realization of nonduality of subject and object."[3] 
    
Task::Kensho is a first cut at building a list of reccomended modules for
Enlightened Perl development. CPAN is wonderful, but there are too many wheels
and you have to pick and choose amongst the various competing technologies. 

The plan is for Task::Kensho to eventually morph into an actual perl 
distribution possibly called Satori Perl.

The modules that are bundled by Task::Kensho are broken down into several 
categories and are still being considered. They are all taken from various 
top 100 most used perl modules lists.

=head2 Basic Toolchain

=over 

=item Bundle::CPAN

=item local::lib

=item version

=back

=head2 Testing

=over

=item Test::Pod

=item Test::More

=item Test::Exception

=item Test::Pod::Coverage

=back

=head2 Object Oriented Programming

=over

=item Moose

=item Moose::Autobox

=item MooseX::AttributeHelpers

=item MooseX::Storage

=item MooseX::Getopt

=back

=head2 Asynchronous Programming

=over

=item POE

=back

=head2 Web Development

=over

=item Catalyst

=item Catalyst::View::TT

=item Catalyst::Model::DBIC

=back

=head2 Database Development

=over

=item DBI

=item DBD::SQLite

=item DBIx::Class

=item DBIx::Class::Schema::Loader

=back

=head2 Web Crawling

=over

=item Bundle::LWP

=item LWP::Simple

=item WWW::Mechanize

=back

=head2 Module Development

=over

=item Module::Starter

=item Module::Install

=back

=head1 BUGS AND LIMITATIONS

This list is by no means comprehensive of the "Good" Modules on CPAN. Nor is 
this neccessarily the correct path for all developers. Each of these modules
has a perfectly acceptable replacement that may work better for you. This 
is however a path to good perl practicies, and a starting 
place on the road to Enlightened Perl programming.

No bugs have been reported.

Please report any bugs or feature requests to
C<bug-task-kensho@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.

=head1 SEE ALSO

L<http://www.enlightenedperl.org/>, L<Perl::Dist::Strawberry>

=head1 AUTHOR

Chris Prather  C<< <perigrin@cpan.org> >>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2008, Chris Prather C<< <perigrin@cpan.org> >>. Some rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

