use strict;
use warnings;
package inc::MakeMaker;

use Moose;
extends 'Dist::Zilla::Plugin::MakeMaker::Awesome' => { -version => '0.26' };
use namespace::autoclean;

# this line is used by the code added by [DynamicPrereqs], via [=inc::OptionalFeatureForMainTask]
around _build_header => sub {
    my $orig = shift;
    my $self = shift;
    'my $release_version = \'' . $self->zilla->version . '\';';
};

1;
