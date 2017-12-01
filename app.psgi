use strict;
use warnings;

print "process id: $$\n";

$SIG{INT}  = sub { warn "receive SIGINT!" };
$SIG{TERM} = sub { warn "receive SIGTERM!" };

my $app = sub {
    my $env = shift;
    return [ 200, [ 'Content-Type' => 'text/plain' ], ['Hello Docker World'], ];
};
