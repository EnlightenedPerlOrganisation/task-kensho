use strict;
use warnings;
package inc::MungeFileWithConfig;

use Moose;
with (
    'MooseX::SimpleConfig',
    'Dist::Zilla::Role::FileMunger',
    'Dist::Zilla::Role::TextTemplate',
    'Dist::Zilla::Role::FileFinderUser' => { default_finders => [ ] },
);
use List::Util 'first';
use namespace::autoclean;

has configfile => (
    is => 'ro', isa => 'Str',
    required => 1,
);

has _config_data => (
    is => 'ro', isa => 'HashRef',
    lazy => 1,
    default => sub {
        my $self = shift;
        $self->get_config_from_file($self->configfile);
    },
);

sub mvp_multivalue_args { qw(files) }
sub mvp_aliases { { file => 'files' } }

has files => (
    isa  => 'ArrayRef[Str]',
    lazy => 1,
    default => sub { [] },
    traits => ['Array'],
    handles => { files => 'elements' },
);

around dump_config => sub
{
    my $orig = shift;
    my $self = shift;

    my $config = $self->$orig;

    $config->{'' . __PACKAGE__} = {
        finder => $self->finder,
        files => [ $self->files ],
        configfile => $self->configfile,
    };

    return $config;
};

sub munge_files
{
    my $self = shift;

    my @files = map {
        my $filename = $_;
        my $file = first { $_->name eq $filename } @{ $self->zilla->files };
        defined $file ? $file : ()
    } $self->files;

    $self->munge_file($_) for @files, @{ $self->found_files };
}

sub munge_file
{
    my ($self, $file) = @_;

    $self->log_debug('updating contents of ' . $file->name . ' in memory');

    $file->content(
        $self->fill_in_string(
            $file->content,
            {
                dist => \($self->zilla),
                plugin => \$self,
                config_data => \($self->_config_data),
            },
        )
    );
}

__PACKAGE__->meta->make_immutable;
