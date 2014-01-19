use strict;
use warnings;
package # stay away, PAUSE!
    inc::SubTaskPluginBundle;
# ABSTRACT: A plugin bundle for building Task::Kensho:: subdists
# vim: set ts=8 sw=4 tw=78 et :

use Moose;
with
    'Dist::Zilla::Role::PluginBundle::Easy',
    'Dist::Zilla::Role::PluginBundle::PluginRemover' => { -version => '0.102' },
    'Dist::Zilla::Role::PluginBundle::Config::Slicer';

use namespace::autoclean;

# this is ripped off wholesale from Dist::Zilla::PluginBundle::Author::ETHER
# 0.047, with customizations removed that we do not want.. and also less
# manipulation of the git repo, and silly irrelevant tests removed.

sub configure
{
    my $self = shift;

    my @plugins = (
        # VersionProvider
        [ 'Git::NextVersion'    => { version_regexp => '^v([\d._]+)(-TRIAL)?$' } ],

        # Gather Files
        [ 'Git::GatherDir'      => { exclude_filename => [ 'dist.ini' ] } ],
        [ '=inc::MungeFileWithConfig' => { finder => ':InstallModules', configfile => '../modules.yml' } ],
        qw(MetaYAML MetaJSON License Readme Manifest),
        [ 'Test::Compile'       => { ':version' => '2.039', bail_out_on_fail => 1, xt_mode => 1 } ],
        'Test::NoTabs',
        'EOLTests',
        'MetaTests',
        [ 'Test::Version'       => { is_strict => 1 } ],
        [ 'Test::CPAN::Changes' => { ':version' => '0.008' } ],
        'Test::ChangesHasContent',
        [ 'Test::MinimumVersion' => { ':version' => '2.000003', max_target_perl => '5.005' } ],
        'PodSyntaxTests',
        'PodCoverageTests',
        'Test::PodSpelling',
        #[Test::Pod::LinkCheck]     many outstanding bugs
        'Test::Pod::No404s',
        'Test::Kwalitee',
        'MojibakeTests',
        [ 'Test::ReportPrereqs' => { verify_prereqs => 1 } ],   # gives us something in t/
        'Test::Portability',

        # Prune Files
        'PruneCruft',
        #'ManifestSkip',    # XXX needed?

        # Munge Files
        'Git::Describe',
        [ PkgVersion            => { ':version' => '5.010', die_on_existing_version => 1, die_on_line_insertion => 1 } ],
        [ 'Authority'           => { authority => 'cpan:PERIGRIN' } ],
        [ PodWeaver             => { ':version' => '4.005', replacer => 'replace_with_comment', post_code_replacer => 'replace_with_nothing' } ],
        [ 'NextRelease'         => { ':version' => '4.300018', time_zone => 'UTC', format => '%-8v  %{yyyy-MM-dd HH:mm:ss\'Z\'}d%{ (TRIAL RELEASE)}T' } ],
        [ 'ReadmeAnyFromPod'    => { type => 'markdown', filename => 'README.md', location => 'build' } ],

        # MetaData
        [ 'GithubMeta'            => { issues => 1 } ],
        # (Authority)
        [ 'MetaNoIndex'         => { directory => [ qw(t xt examples share) ] } ],
        [ 'MetaProvides::Package' => { meta_noindex => 1, ':version' => '1.15000002', finder => ':InstallModules' } ],
        'MetaConfig',
        [ '=inc::OptionalFeatureForSubTask' => { configfile => 'modules.yml', -default => 1,
            -always_recommend => 1,   # report-prereqs will list these
        } ],

        #[ContributorsFromGit]

        # Register Prereqs
        # (MakeMaker or other installer)
        'AutoPrereqs',
        'Prereqs::AuthorDeps',
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
        [ 'Git::Check'          => 'initial check' => { allow_dirty => [] } ],
        'Git::CheckFor::MergeConflicts',
        [ 'Git::CheckFor::CorrectBranch' => { ':version' => '0.004', release_branch => 'master' } ],
        [ 'Git::Remote::Check'  => { branch => 'master', remote_branch => 'master' } ],
        'CheckPrereqsIndexed',
        'TestRelease',
        [ 'Git::Check'          => 'after tests' => { allow_dirty => [] } ],
        # (ConfirmRelease)

        # Releaser
#        'UploadToCPAN',
        'FakeRelease',

        # After Release
#        'Git::Push',
    );

    $self->add_plugins(@plugins);
}

__PACKAGE__->meta->make_immutable;
