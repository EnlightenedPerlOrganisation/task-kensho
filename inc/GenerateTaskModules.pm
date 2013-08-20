use strict;
use warnings;
package inc::GenerateTaskModules;

use Moose;
with
    'MooseX::SimpleConfig',
    'Dist::Zilla::Role::MetaProvider',
    'Dist::Zilla::Role::FileGatherer',
    'Dist::Zilla::Role::FileMunger',
    'Dist::Zilla::Role::TextTemplate';

use Dist::Zilla::Plugin::OptionalFeature;
use Module::Runtime 'module_notional_filename';
use Path::Tiny;
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

sub metadata
{
    my $self = shift;

    my @features = map {
        my $module = $_;
        my $module_data = $self->data_for($module);
        Dist::Zilla::Plugin::OptionalFeature->new(
            zilla => $self->zilla,
            plugin_name => (split('::', $module))[-1],
            '-description' => $module_data->{description},
            (map { $_ => 0 } keys %{ $module_data->{components} }),
        )
    } $self->modules;

    require Hash::Merge::Simple;
    my $meta = {};
    $meta = Hash::Merge::Simple::merge($meta, $_->metadata)
        for @features;

    return $meta;
}

sub gather_files
{
    my $self = shift;

    require Dist::Zilla::File::InMemory;

    my $template = path('template.pm')->slurp;

    # here is where we generate all the lib/Task/Kensho/*.pm modules
    foreach my $module ($self->modules)
    {
        $self->add_file(Dist::Zilla::File::InMemory->new(
            name => path('lib', module_notional_filename($module))->stringify,
            content => $self->fill_in_string(
                $template,
                {
                    dist => \($self->zilla),
                    plugin => \($self),
                    module => \$module,
                    data => \($self->module_data),
                }
            )
        ));
    }
}

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
