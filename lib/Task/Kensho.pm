use strict;
use warnings;
package Task::Kensho;
# ABSTRACT: A Glimpse at an Enlightened Perl

__END__
=pod

=head1 SYNOPSIS

    > cpanm --interactive Task::Kensho

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

{{
    use 5.010;
    join "\n\n",
        map {
            my $module = $_;
            join("\n\n",
                '=head2 L<' . $module . '>: ' . $config_data->{$module}{description},
                $config_data->{$module}{long_description} ? $config_data->{$module}{long_description} : (),
                '=head3',
                (map {
                    'L<' . $_ . ">\n\n" . $config_data->{$module}{components}{$_};
                } sort keys %{ $config_data->{$module}{components} })
            ),
        } sort keys %$config_data;
}}

=head1 INSTALLING

Since version 0.34, L<Task::Kensho> has made use of the C<optional_features> field
in distribution metadata. This allows CPAN clients to interact with you
regarding which modules you wish to install.

The C<cpanm> client requires interactive mode to be enabled for this to work:

    cpanm --interactive Task::Kensho

=head1 BUGS AND LIMITATIONS

This list is by no means comprehensive of the "Good" Modules on CPAN.
Nor is this necessarily the correct path for all developers. Each of
these modules has a perfectly acceptable replacement that may work
better for you. This is however a path to good perl practice, and a
starting place on the road to Enlightened Perl programming.

Please report any bugs or feature requests to
L<{{ $dist->distmeta->{resources}{bugtracker}{web} }}>.

=head1 SEE ALSO

L<http://www.enlightenedperl.org/>,
L<Perl::Dist::Strawberry|Perl::Dist::Strawberry>

=cut
