use strict;
use warnings;
package # stay away, PAUSE!
    inc::SubTaskPluginBundle;
# ABSTRACT: A plugin bundle for building Task::Kensho:: subdists
# vim: set ts=8 sw=4 tw=78 et :

use 5.014;  # s///r
use Moose;
with
    'MooseX::SimpleConfig',
    'Dist::Zilla::Role::PluginBundle::Easy',
    'Dist::Zilla::Role::PluginBundle::PluginRemover' => { -version => '0.102' },
    'Dist::Zilla::Role::PluginBundle::Config::Slicer';

use Devel::CheckBin;
use namespace::autoclean;

# this is ripped off wholesale from Dist::Zilla::PluginBundle::Author::ETHER
# 0.068, with customizations removed that we do not want.. and also less
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

my $has_bash = can_run('bash');

sub configure
{
    my $self = shift;

    my $module = $self->distname =~ s/-/::/gr;
    my $module_data = $self->data_for($module);

    my @plugins = (
        # VersionProvider
        [ 'Git::NextVersion'    => { version_regexp => '^v([\d._]+)(-TRIAL)?$' } ],

        # Gather Files
        [ 'Git::GatherDir'      => { ':version' => '2.016', exclude_match => '^inc', exclude_filename => [ 'dist.ini', 'modules.yml', 'META.json', 'README.md', 'README.pod' ] } ],
        [ 'MungeFile::WithConfigFile' => { finder => ':InstallModules', files => ['README'], configfile => $self->configfile } ],
        # XXX FIXME - munging content too soon, before our module has its abstract munged
        # 'Readme',
        qw(MetaYAML MetaJSON License Manifest),
        [ 'Test::Compile'       => { ':version' => '2.039', bail_out_on_fail => 1, xt_mode => 1 } ],
        'Test::NoTabs',
        'EOLTests',
        'MetaTests',
        [ 'Test::CPAN::Changes' => { ':version' => '0.008' } ],
        'Test::ChangesHasContent',
        [ 'Test::MinimumVersion' => { ':version' => '2.000003', max_target_perl => '5.006' } ],
        'PodSyntaxTests',
        'PodCoverageTests',
        [ 'Test::PodSpelling'   => { ':version' => '2.006003' } ],
        'Test::Kwalitee',
        'MojibakeTests',
        [ 'Test::ReportPrereqs' => { verify_prereqs => 1 } ],   # gives us something in t/
        'Test::Portability',
        'Test::CleanNamespaces',

        # Munge Files
        'Git::Describe',
        [ PkgVersion            => { ':version' => '5.010', die_on_existing_version => 1, die_on_line_insertion => 1 } ],
        [ 'Authority'           => { authority => 'cpan:PERIGRIN', do_munging => 0} ],
        [ PodWeaver             => { ':version' => '4.005', replacer => 'replace_with_comment', post_code_replacer => 'replace_with_nothing' } ],
        [ 'NextRelease'         => { ':version' => '4.300018', time_zone => 'UTC', format => '%-8v  %{yyyy-MM-dd}d%{ (TRIAL RELEASE)}T' } ],

        # MetaData
        [ 'GithubMeta'          => { issues => 1 } ],
        # (Authority)
        [ 'MetaNoIndex'         => { directory => [ qw(t xt examples share) ] } ],
        [ 'MetaProvides::Package' => { meta_noindex => 1, ':version' => '1.15000002', finder => ':InstallModules' } ],
        'MetaConfig',
        [ 'Git::Contributors'   => { ':version' => '0.006', order_by => 'commits', paths => [ '.', '../modules.yml' ] } ],

        # Register Prereqs
        # (MakeMaker or other installer)
        'AutoPrereqs',
        [ 'Prereqs::AuthorDeps' => { exclude => [ 'inc::SubTaskPluginBundle' ] } ],
        'MinimumPerl',
        [ 'Prereqs' => installer_requirements => {
                '-phase' => 'develop', '-relationship' => 'requires',
                # these are optional in [@Author::ETHER] (not listed as required prereqs)
                'Dist::Zilla::Plugin::GitHub::Update' => 0,
                'Dist::Zilla::Plugin::GithubMeta' => 0,
            } ],
        [ 'Prereqs' => 'task components' => {
                '-phase' => 'runtime', '-relationship' => 'requires',
                (map { $_ => 0 } keys %{ $module_data->{components} }),
            } ],

        # Test Runner
        [ 'RunExtraTests'       => { ':version' => '0.019' } ],

        # Install Tool
        'MakeMaker::Fallback',
        'ModuleBuildTiny',

        # After Build
        'CheckSelfDependency',

        # Before Release
        [ 'CheckStrictVersion'  => { decimal_only => 1 } ],
        [ 'Git::Check'          => 'initial check' => { repo_root => '..', allow_dirty => [''] } ],
        'Git::CheckFor::MergeConflicts',
        [ 'Git::CheckFor::CorrectBranch' => { ':version' => '0.004', release_branch => 'master' } ],
        [ 'Git::Remote::Check'  => { branch => 'master', remote_branch => 'master' } ],
        'CheckPrereqsIndexed',
        'TestRelease',
        [ 'Git::Check'          => 'after tests' => { repo_root => '..', allow_dirty => [''] } ],
        [ 'CheckIssues' ],
        # note: no [ConfirmRelease]

        # Releaser
        'UploadToCPAN',
        [ 'ArchiveRelease'      => { directory => '../released-subtasks' } ],

        # After Release
        #[ 'CopyFilesFromRelease' => { filename => [ 'META.json' ] } ],
        [ 'Run::AfterRelease'   => 'remove old READMEs' => { run => 'rm -f README.md' } ],
        [ 'Git::Commit'         => { ':version' => '2.020', add_files_in => ['.'], allow_dirty => [ 'Changes', 'README.md' ], commit_msg => '%N-%v%t%n%n%c' } ],
        # note: no [Git::Tag], [Git::Push]
        [ 'Clean' ],
    );

    $self->add_plugins(@plugins);
}

__PACKAGE__->meta->make_immutable;
