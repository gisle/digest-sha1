use strict;
use warnings;
use Test::More;
use Config;

BEGIN {
    plan skip_all => 'Perl compiled without ithreads'
        unless $Config{useithreads};
    plan tests => 2;
}

use threads;
use Digest::SHA1;

my $obj = Digest::SHA1->new;
$obj->add("foo");
my $tdigest = threads->create(sub {
    $obj->add("bar");
    $obj->hexdigest;
})->join;

isnt $obj->clone->hexdigest, $tdigest,
    "unshared object unaffected by the thread";

$obj->add("bar");
is $obj->clone->hexdigest, $tdigest;
