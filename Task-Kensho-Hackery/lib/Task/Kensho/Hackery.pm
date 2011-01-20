package Task::Kensho::Hackery;
use strict;
our $VERSION = '0.27';

__END__

=encoding utf-8

=head1 NAME

Task::Kensho::Hackery - A Glimpse at an Enlightened Perl (Hackery)

=head1 VERSION

This document describes Task::Kensho::Hackery version 0.27

=head1 SYNOPSIS

    > cpan Task::Kensho::Hackery

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
C<bug-task-kensho-hackery@rt.cpan.org>, or through the web interface at
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
