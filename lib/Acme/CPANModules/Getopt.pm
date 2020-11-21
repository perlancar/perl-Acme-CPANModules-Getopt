package Acme::CPANModules::Getopt;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $LIST = {
    summary => 'Modules that parse command-line options',
    entry_features => {
        uses_spec => {summary => 'Whether user need to specify some sort of "spec" (list of options and potentially more details)'},
        uses_getopt_long => {summary => 'Whether module uses Getopt::Long (or is Getopt::Long itself)'},
        auto_help => {summary => 'Whether the module can generate automatic help message (usually from spec) when user specifies something like --help'},
        auto_version => {summary => 'Whether the module can generate automatic version message when user specifies something like --version'},
        file => {summary => 'Whether the module supports getting options from a file'},
        subcommand => {summary => 'Whether the module supports subcommands'},
    },
    entries => [
        {
            module => 'Getopt::Std',
            features => {
                uses_spec => 1,
                uses_getopt_long => 0,
                auto_help => {value=>0, summary=>'Only calls main::HELP_MESSAGE'},
                auto_version => {value=>0, summary=>'Only calls main::VERSION_MESSAGE'},
            },
        },
        {
            module => 'Getopt::Long',
            features => {
                uses_spec => 1,
                uses_getopt_long => 1,
                auto_help => 1,
                auto_version => 1,
            },
        },
        {
            module => 'Getopt::Tiny',
            features => {
                uses_spec => 1,
                uses_getopt_long => 0,
                auto_help => 0,
                auto_version => 0,
            },
        },
        {
            module => 'Getopt::Long::Descriptive',
            features => {
                uses_spec => 1,
                uses_getopt_long => 1,
                auto_help => 1,
                auto_version => 0,
            },
        },
        {
            module => 'Getopt::Long::More',
            features => {
                uses_spec => 1,
                uses_getopt_long => 1,
                auto_help => 1,
                auto_version => 1,
                file => 0, # planned
                subcommand => 0, # planned
            },
        },
        {
            module => 'Getopt::Simple',
            features => {
                uses_spec => 1,
                uses_getopt_long => 1,
                auto_help => 1,
                auto_version => 1,
            },
        },
        {
            module => 'Getopt::Compact',
            features => {
                uses_spec => 1,
                uses_getopt_long => 1,
                auto_help => 1,
                auto_version => 1,
            },
        },
        {
            module => 'Opt::Imistic',
            features => {
                uses_spec => 0,
                uses_getopt_long => 0,
                auto_help => 0,
                auto_version => 0,
            },
        },
        {
            module => 'Getopt::Valid',
            features => {
                uses_spec => 1,
                uses_getopt_long => 1,
                auto_help => 1,
                auto_version => 1,
            },
        },
        {
            module => 'Getopt::Std::Strict',
            features => {
                uses_spec => 1,
                uses_getopt_long => 0,
                auto_help => 0,
                auto_version => 0,
            },
        },
        {
            module => 'Getopt::Declare',
            features => {
                uses_spec => 1,
                uses_getopt_long => 0,
                auto_help => 1,
                auto_version => 1,
            },
        },
        {
            module => 'Getopt::Euclid',
            features => {
                uses_spec => 1,
                uses_getopt_long => 0,
                auto_help => 1, # from POD
                auto_version => 1, #from POD
            },
        },
        {
            module => 'Docopt',
            features => {
                uses_spec => 1,
                uses_getopt_long => 0,
                auto_help => 1,
                auto_version => 1, #?
            },
        },
        {
            module => 'Getopt::Auto',
            features => {
                uses_spec => 1,
                uses_getopt_long => 0,
                auto_help => 1, # from POD
                auto_version => 1, # from POD
            },
        },
        {
            module => 'Getopt::Lucid',
            features => {
                uses_spec => 1,
                uses_getopt_long => 0,
                auto_help => 0,
                auto_version => 0,
            },
        },
        {
            module => 'Getopt::ArgvFile',
            features => {
                uses_spec => 1,
                uses_getopt_long => 1,
                auto_help => 1,
                auto_version => 1,
                file => 1,
            },
        },
        {
            module => 'App::Options',
            features => {
                uses_spec => 1,
                uses_getopt_long => 0,
                auto_help => 1,
                auto_version => 1, #?
                file => 1,
            },
        },
        {
            module => 'MooseX::Getopt',
            features => {
                uses_spec => 1,
                uses_getopt_long => {value=>1, summary=>'Uses Getopt::Long::Descriptive'},
                auto_help => 1,
                auto_version => 1,
                file => {value=>0, summary=>'Needs separate module: MooseX::ConfigFromFile or MooseX::SimpleConfig'},
            },
        },
        {
            module => 'MooX::Options',
            features => {
                uses_spec => 1,
                uses_getopt_long => {value=>1, summary=>'Uses Getopt::Long::Descriptive'},
                auto_help => 1,
                auto_version => 0,
                file => 1,
            },
        },
        {
            module => 'Getopt::Attribute',
            features => {
                uses_spec => 1,
                uses_getopt_long => 1,
                auto_help => 1,
                auto_version => 1,
            },
        },
        {
            module => 'Getopt::Modular',
            features => {
                uses_spec => 1,
                uses_getopt_long => 1,
                auto_help => 1,
                auto_version => 1,
            },
        },
        # App::Cmd
        # App::Spec
        {
            module => 'Smart::Options',
            features => {
                uses_spec => 1,
                uses_getopt_long => 0,
                auto_help => 1,
                auto_version => 0,
                subcommand => 1,
                file => 1,
            },
        },
        {
            module => 'Getopt::ArgParse',
            features => {
                uses_spec => 1,
                uses_getopt_long => 1,
                auto_help => 0, #?
                auto_version => 0, #?
                subcommand => 1,
            },
        },
        {
            module => 'Getopt::Kingpin',
            features => {
                uses_spec => 1,
                uses_getopt_long => 0,
                auto_help => 1, #?
                auto_version => 1, #?
                subcommand => 1,
            },
        },
        {
            module => 'Getopt::Complete',
            features => {
                uses_spec => 1,
                uses_getopt_long => 0,
                auto_help => 0, #?
                auto_version => 0, #?
            },
        },
        {
            module => 'Getopt::Long::Complete',
            features => {
                uses_spec => 1,
                uses_getopt_long => 1,
                auto_help => 1,
                auto_version => 1,
            },
        },
        {
            module => 'Getopt::Long::Subcommand',
            features => {
                uses_spec => 1,
                uses_getopt_long => 1,
                auto_help => 1,
                auto_version => 1,
                subcommand => 1,
            },
        },
        {
            module => 'Getopt::Long::Less',
            features => {
                uses_spec => 1,
                uses_getopt_long => 0,
                auto_help => 0,
                auto_version => 0,
            },
        },
        {
            module => 'Getopt::Long::EvenLess',
            features => {
                uses_spec => 1,
                uses_getopt_long => 0,
                auto_help => 0,
                auto_version => 0,
            },
        },
        # Getopt::Panjang
        # Perinci::CmdLine
        # ScriptX
    ],

};

1;
# ABSTRACT:
