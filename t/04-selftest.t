use strict;
use warnings FATAL => 'all';

use Test::Warnings;

use Test::Kwalitee tests => [
        qw(
            has_changelog
            has_readme
            has_tests
            no_symlinks
            proper_libs
            no_pod_errors
            use_strict
        )
    ];
