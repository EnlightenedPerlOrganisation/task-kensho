use strict;
use warnings;
package # stay away, PAUSE!
    inc::SubTaskPluginBundle;
# ABSTRACT: A plugin bundle for building Task::Kensho:: subdists
# vim: set ts=8 sw=4 tw=78 et :

use 5.016;  # s///r
use Moose;
with
    'MooseX::SimpleConfig',
    'Dist::Zilla::Role::PluginBundle::Easy',
    'Dist::Zilla::Role::PluginBundle::PluginRemover' => { -version => '0.102' },
    'Dist::Zilla::Role::PluginBundle::Config::Slicer';

use namespace::autoclean;

# this is ripped off wholesale from Dist::Zilla::PluginBundle::Author::ETHER
# 0.047, with customizations removed that we do not want.. and also less
# manipulation of the git repo, and silly irrelevant tests removed.

has distname => (
    is => 'ro', isa => 'Str',
    lazy => 1,
    default => sub { shift->payload->{distname} // die 'missing required option: \'distname\'' ; },
);

has configfile => (
    is => 'ro', isa => 'Str',
    lazy => 1,
    default => sub { shift->payload->{configfile} // '../modules.yml'; },
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


sub configure
{
    my $self = shift;

    my $module = $self->distname =~ s/-/::/gr;
    my $module_data = $self->data_for($module);

    my @plugins = (
        # VersionProvider
        [ 'Git::NextVersion'    => { version_regexp => '^v([\d._]+)(-TRIAL)?$' } ],

        # Gather Files
        [ 'Git::GatherDir'      => { exclude_match => '^inc', exclude_filename => [ 'dist.ini', 'modules.yml', 'META.json' ] } ],
        [ 'MungeFile::WithConfigFile' => { finder => ':InstallModules', files => ['README'], configfile => $self->configfile } ],
        # XXX FIXME - munging content too soon, before our module has its abstract munged
        # 'Readme',
        qw(MetaYAML MetaJSON License Manifest),
        [ 'Test::Compile'       => { ':version' => '2.039', bail_out_on_fail => 1, xt_mode => 1 } ],
        'Test::NoTabs',
        'EOLTests',
        'MetaTests',
        [ 'Test::Version'       => { is_strict => 1 } ],
        [ 'Test::CPAN::Changes' => { ':version' => '0.008' } ],
        'Test::ChangesHasContent',
        [ 'Test::MinimumVersion' => { ':version' => '2.000003', max_target_perl => '5.006' } ],
        'PodSyntaxTests',
        'PodCoverageTests',
        # XXX FIXME - forcing distmeta to be calculated too soon, and abstract
        # fetched, before the module is munged
        # 'Test::PodSpelling',
        'Test::Kwalitee',
        'MojibakeTests',
        [ 'Test::ReportPrereqs' => { verify_prereqs => 1 } ],   # gives us something in t/
        'Test::Portability',

        # Munge Files
        'Git::Describe',
        [ PkgVersion            => { ':version' => '5.010', die_on_existing_version => 1, die_on_line_insertion => 1 } ],
        [ 'Authority'           => { authority => 'cpan:PERIGRIN' } ],
        [ PodWeaver             => { ':version' => '4.005', replacer => 'replace_with_comment', post_code_replacer => 'replace_with_nothing' } ],
        [ 'NextRelease'         => { ':version' => '4.300018', time_zone => 'UTC', format => '%-8v  %{yyyy-MM-dd}d%{ (TRIAL RELEASE)}T' } ],
        [ 'ReadmeAnyFromPod'    => { type => 'markdown', filename => 'README.md', location => 'build' } ],

        # MetaData
        [ 'GithubMeta'            => { issues => 1 } ],
        # (Authority)
        [ 'MetaNoIndex'         => { directory => [ qw(t xt examples share) ] } ],
        # XXX FIXME - this runs too late to get the package name out of our
        # module, because [Test::PodSpelling] is forcing metadata to be
        # created before the filemunging phase starts
        # [ 'MetaProvides::Package' => { meta_noindex => 1, ':version' => '1.15000002', finder => ':InstallModules' } ],
        'MetaConfig',
        [ 'OptionalFeature' => {
                ':version' => '0.011',
                -name => (split('::', $module))[-1],
                -description => $module_data->{description},
                -always_recommend => 1,   # report-prereqs will list these
                -require_develop => 0,
                -default => 1,
                (map { $_ => 0 } keys %{ $module_data->{components} }),
            },
        ],

        #[ContributorsFromGit]

        # Register Prereqs
        # (MakeMaker or other installer)
        'AutoPrereqs',
        [ 'Prereqs::AuthorDeps' => { exclude => [ 'inc::SubTaskPluginBundle' ] } ],
        'MinimumPerl',
        [ 'Prereqs' => installer_requirements => {
                '-phase' => 'develop', '-relationship' => 'requires',
                'Dist::Zilla' => Dist::Zilla->VERSION,
                # these are optional in [@Author::ETHER] (not listed as required prereqs)
                'Dist::Zilla::Plugin::GitHub::Update' => 0,
                'Dist::Zilla::Plugin::GithubMeta' => 0,
            } ],

        # Test Runner
        'RunExtraTests',

        # Install Tool
        'MakeMaker::Fallback',
        'ModuleBuildTiny',

        # After Build
        'CheckSelfDependency',
        [ 'Run::AfterBuild' => { run => q{if [ `dirname %d` != .build ]; then test -e .ackrc && grep -q -- '--ignore-dir=%d' .ackrc || echo '--ignore-dir=%d' >> .ackrc; fi} } ],


        # Before Release
        'CheckPrereqsIndexed',
        [ 'Git::Check'          => { repo_root => '..', allow_dirty => [''] } ],
        'Git::CheckFor::MergeConflicts',
        [ 'Git::CheckFor::CorrectBranch' => { ':version' => '0.004', release_branch => 'master' } ],
        [ 'Git::Remote::Check'  => { branch => 'master', remote_branch => 'master' } ],
        'TestRelease',
        [ 'Git::Check'          => 'after tests' => { allow_dirty => [''] } ],
        # (ConfirmRelease)

        # Releaser
        'UploadToCPAN',

        # After Release
        #[ 'CopyFilesFromRelease' => { filename => [ 'META.json' ] } ],
        [ 'Git::Commit'         => { add_files_in => [''], allow_dirty => [ 'Changes' ], commit_msg => '%N-%v%t%n%n%c' } ],

        # listed late, to allow all other plugins which do BeforeRelease checks to run first.
        'ConfirmRelease',
    );

    $self->add_plugins(@plugins);
}

__PACKAGE__->meta->make_immutable;
