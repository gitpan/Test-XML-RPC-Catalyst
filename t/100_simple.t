use lib 't/lib';

use Test::More;

use strict;
use warnings;

plan tests => 3;

use_ok ('Test::XML::RPC::Catalyst','Catty');

my $client = Test::XML::RPC::Catalyst->new;

is_deeply ($client->call ('system.listMethods'),['foo']);

is ($client->call ('foo',42),42);

