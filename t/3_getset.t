package One;

# BEGIN {$mcoder::debug=1}

use mcoder new => qw(new),
    [qw(set get)] => [qw(runner walker)],
    [qw(calculated delete undef set)] => qw(weight);


sub _calculate_weight {
    return 70;
}

package testing;

use Test::More tests => 9;

my $o;
ok($o=One->new(walker=>'lucas grihander'), 'constructor');

is($o->weight, 70, "weight");

is($o->set_weight(50), 50, "set_weight");

# use Data::Dumper;
# print STDERR Dumper $o;

is($o->weight, 50, "weight");

$o->undef_weight;

is($o->weight, 70, "undefined weight");

$o->delete_weight;

is($o->weight, 70, "deleted weight");

is($o->set_runner('pecador'), 'pecador', 'set');

is($o->walker, 'lucas grihander', 'get after ctor');

is($o->runner, 'pecador', 'cobarde, pecador, aigg!');
