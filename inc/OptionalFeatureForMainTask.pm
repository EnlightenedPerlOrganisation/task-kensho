use strict;
use warnings;
package inc::OptionalFeatureForMainTask;

use Moose;
with
    'Dist::Zilla::Role::PluginBundle::Easy',
    'MooseX::SimpleConfig';
use namespace::autoclean;

has configfile => (
    is => 'ro', isa => 'Str',
    lazy => 1,
    default => sub { shift->payload->{configfile} },
);

has _module_data => (
    isa => 'HashRef[HashRef[Str|HashRef[Str]]]',
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

sub configure
{
    my $self = shift;

    my @plugins = map {
        my $module = $_;
        my $module_data = $self->data_for($module);
        my $task = (split('::', $module))[-1];
        [
            'OptionalFeature',
            $task,
            {
                ':version' => '0.011',
                -name => $task,
                -description => $module_data->{description},
                -always_recommend => 1,
                -require_develop => 0,
                -default => 0,
                $module => 0,
            }
        ]
    } sort $self->modules;

    $self->add_plugins(@plugins);
}

__PACKAGE__->meta->make_immutable;
