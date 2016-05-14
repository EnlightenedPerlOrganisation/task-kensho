package # stay away, PAUSE!
    inc::GatherFile;
# ABSTRACT: gather individual file(s)

use Moose;
with 'Dist::Zilla::Role::FileGatherer';

use Moose::Util::TypeConstraints 'class_type';
use Path::Tiny;
use Dist::Zilla::File::OnDisk;
use namespace::autoclean;

has root => (
    is => 'ro', isa => class_type('Path::Tiny'),
    lazy => 1,
    default => sub { path(shift->zilla->root) },
);

has filenames => (
    is => 'ro', isa => 'ArrayRef[Str]',
    lazy => 1,
    default => sub { [] },
);

sub mvp_aliases { +{ filename => 'filenames' } }
sub mvp_multivalue_args { qw(filenames) }

around dump_config => sub {
    my $orig = shift;
    my $self = shift;

    my $config = $self->$orig;

    $config->{+__PACKAGE__} = {
        root => path($self->root)->relative($self->zilla->root),
        filenames => [ sort @{ $self->filenames } ],
    };

    return $config;
};

sub gather_files
{
    my $self = shift;

    my $repo_root = $self->zilla->root;
    my $root = "" . $self->root;
    $root =~ s{^~([\\/])}{require File::HomeDir; File::HomeDir::->my_home . $1}e;
    $root = path($root)->absolute($repo_root)->stringify if path($root)->is_relative;

    for my $filename (@{ $self->filenames })
    {
        $self->log_fatal([ '%s is a directory!', $filename ]) if -d $filename;

        my $fileobj = $self->_file_from_filename($filename);

        $filename = $fileobj->name;
        my $file = path($filename)->relative($root);
        # TODO: support prefix rules here

        $fileobj->name($file->stringify);
        $self->add_file($fileobj);
    }

    return;
}

# from GatherDir
sub _file_from_filename
{
    my ($self, $filename) = @_;

    my @stat = stat $filename or $self->log_fatal("$filename does not exist!");

    return Dist::Zilla::File::OnDisk->new({
        name => $filename,
        mode => $stat[2] & 0755, # kill world-writeability
    });
}

__PACKAGE__->meta->make_immutable;
1;
