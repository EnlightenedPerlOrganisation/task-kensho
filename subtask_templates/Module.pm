use strict;
use warnings;
package {{
($module = $dist->name) =~ s/-/::/g;
$module }};
# ABSTRACT: A Glimpse at an Enlightened Perl: {{ $config_data->{$module}{description} }}

__END__
=pod

=head1 SYNOPSIS

    > cpanm --interactive {{ $module }}

=head1 DESCRIPTION

=for stopwords Buddhism EPO Kenshō nonduality amongst Organisation installable

From L<http://en.wikipedia.org/wiki/Kensho>:

=over 4

Kenshō (見性) (C. Wu) is a Japanese term for enlightenment
experiences - most commonly used within the confines of Zen
Buddhism - literally meaning "seeing one's nature"[1] or "true
self."[2] It generally "refers to the realization of nonduality of
subject and object."[3]

=back

L<Task::Kensho> is a first cut at building a list of recommended modules
for Enlightened Perl development. CPAN is wonderful, but there are too
many wheels and you have to pick and choose amongst the various
competing technologies.

The plan is for L<Task::Kensho> to be a rough testing ground for ideas that
go into among other things the Enlightened Perl Organisation Extended
Core (EPO-EC).

The modules that are bundled by L<Task::Kensho> are broken down into
several categories and are still being considered. They are all taken
from various top 100 most used perl modules lists and from discussions
with various subject matter experts in the Perl Community. That said,
this bundle does I<not> follow the guidelines established for the EPO-EC
for peer review via industry advisers.

Starting in 2011, L<Task::Kensho> split its sub-groups of modules into
individually-installable tasks.  Each L<Task::Kensho> sub-task is listed at the
beginning of its section in this documentation.

When installing L<Task::Kensho> itself, you will be asked to install each
sub-task in turn, or you can install individual tasks separately. These
individual tasks will always install all their modules by default. This
facilitates the ease and simplicity the distribution aims to achieve.

=head1 RECOMMENDED MODULES

=head2 {{ 'L<' . $module . '>: ' . $config_data->{$module}{description}
    . ($config_data->{$module}{long_description} ? ("\n\n" . $config_data->{$module}{long_description}) : '')
}}

{{
    join "\n\n",
        map {
            '=head3 L<' . $_ . ">\n\n" . $config_data->{$module}{components}{$_}
        } sort keys %{ $config_data->{$module}{components} }
}}

=head1 RELEASE SCHEDULE

Starting with release 0.18, L<Task::Kensho> was moved to a monthly release
cycle. This will facilitate a consistent schedule for upstream vendors
to track the changes in L<Task::Kensho>.

=head1 BUGS AND LIMITATIONS

This list is by no means comprehensive of the "Good" Modules on CPAN.
Nor is this necessarily the correct path for all developers. Each of
these modules has a perfectly acceptable replacement that may work
better for you. This is however a path to good perl practice, and a
starting place on the road to Enlightened Perl programming.

Please report any bugs or feature requests to
C<bug-task-kensho@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.

=head1 SEE ALSO

L<http://www.enlightenedperl.org/>,
L<Perl::Dist::Strawberry|Perl::Dist::Strawberry>

=cut
