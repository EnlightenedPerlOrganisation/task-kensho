package Task::Kensho::WebCrawling;
use strict;
our $VERSION = '0.28';

__END__

=encoding utf-8

=head1 NAME

Task::Kensho::WebCrawling - A Glimpse at an Enlightened Perl (WebCrawling)

=head1 VERSION

This document describes Task::Kensho::WebCrawling version 0.28

=head1 SYNOPSIS

    > cpan Task::Kensho::WebCrawling

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

=head2 Web Crawling: Task::Kensho::WebCrawling

=over

=item L<HTTP::Lite|HTTP::Lite>

Lightweight HTTP client implementation

=item L<LWP::UserAgent>

Full-featured Web client library for Perl

=item L<LWP::Simple|LWP::Simple>

Simple procedural interface to LWP

=item L<WWW::Mechanize|WWW::Mechanize>

Handy web browsing in a Perl object

=item L<WWW::Mechanize::TreeBuilder|WWW::Mechanize::TreeBuilder>

This module combines L<WWW::Mechanize|WWW::Mechanize> and
L<HTML::TreeBuilder|HTML::TreeBuilder>.

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
C<bug-task-kensho-webcrawling@rt.cpan.org>, or through the web interface at
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
