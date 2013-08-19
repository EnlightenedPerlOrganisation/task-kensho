use strict;
use warnings;
package inc::GenerateTaskModules;

use Moose;
with
    'MooseX::SimpleConfig',
    'Dist::Zilla::Role::FileMunger',
    'Dist::Zilla::Role::TextTemplate';

use namespace::autoclean;

# called by MooseX::SimpleConfig
has configfile => (
    is => 'ro', isa => 'Str',
    default => 'modules.yml',
);

# populated via MooseX::SimpleConfig
has module_data => (
    is => 'ro', isa => 'HashRef[HashRef[Str|HashRef[Str]]]',
    traits => ['Hash'],
    handles => {
        modules => 'keys',
        data_for => 'get',
    },
    lazy => 1,
    default => sub {
        my $self = shift;
        $self->get_config_from_file($self->configfile);
    },
);


sub munge_file
{
    my ($self, $file) = @_;

    return unless $file->name eq 'lib/Task/Kensho.pm';

    # here is where we generate lib/Task/Kensho.pm itself
    $file->content(
        $self->fill_in_string(
            $file->content,
            {
                dist => \($self->zilla),
                plugin => \($self),
                data => \($self->module_data),
            }
        )
    );

    return;
}

__PACKAGE__->meta->make_immutable;
__END__
=pod

=cut
