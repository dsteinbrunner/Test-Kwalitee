use strict;
use warnings;

use Test::Tester 0.108;
use Test::More;

plan( skip_all => "running in a bare repository (some files missing): skipping" ) if -d '.git';

plan skip_all => 'These tests are only for Test::Builder 0.9x'
    if Test::Builder->VERSION >= 1.005;

require Test::Kwalitee;

check_tests(
    sub { Test::Kwalitee->import( tests => [ qw(use_strict has_readme) ] ) },
    [ map {
            +{
                name => $_,
                depth => 2,
                ok => 1,
                actual_ok => 1,
                type => '',
                diag => '',
            }
        }
        qw(
            has_readme
            use_strict
        )
    ],
    'explicitly included tests tests run exclusively',
);

# done_testing already called in Test::Kwalitee's END block
