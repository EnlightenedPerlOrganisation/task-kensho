use strict;
use warnings;
package inc::OptionalFeatureForSubTask;

use Moose;
extends 'Dist::Zilla::Plugin::OptionalFeature';
with 'MooseX::SimpleConfig';

use namespace::autoclean;

has configfile => (
    is => 'ro', isa => 'Str',
    required => 1,
);

has _module_data => (
    isa => 'HashRef[HashRef[Str|HashRef[Str]]]',
    traits => ['Hash'],
    handles => { data_for => 'get' },
    lazy => 1,
    default => sub {
        my $self = shift;
        $self->get_config_from_file($self->configfile);
    },
);

around BUILDARGS => sub {
    my $orig = shift;
    my $class = shift;

    my $args = $class->$orig(@_);

    my $configfile = delete $args->{_prereqs}{configfile};
    my $module = $args->{zilla}->name =~ s/-/::/gr;
    my $module_data = $class->get_config_from_file($configfile)->{$module};

    return {
        %$args,
        configfile => $configfile,
        name => (split('::', $module))[-1],
        description => $module_data->{description},
        always_recommend => 1,
        default => 1,
        _prereqs => {
            (map { $_ => 0 } keys %{ $module_data->{components} }),
        },
    };
};

around dump_config => sub {
    my ($orig, $self) = @_;
    my $config = $self->$orig;

    $config->{'' . __PACKAGE__} = {
        configfile => $self->configfile,
    };

    return $config;
};

1;
