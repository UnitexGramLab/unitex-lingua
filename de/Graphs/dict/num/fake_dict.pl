#!/usr/bin/perl

use utf8;

use Encode::Unicode;

use open ':encoding(UTF-16LE)';
binmode(STDOUT, ':encoding(UTF-16LE)');
binmode(STDIN, ':encoding(UTF-16LE)');
binmode(STDERR, ':utf8');

my $i = 0;
my @chars = A..Z;
my @repl;


while (<>) {
    next unless /^[%@]/;
    if (s!(?<=/,\.)([^\n\r]+)!$chars[$i]!) {
        @repl[$i] = "#" . $1;
        $i++;
    } elsif (s!(?<=^%)(.+)/,\$STEM\.([^\n\r]+)!$1/,.$chars[$i]!) {
        @repl[$i] = length($1) . "#" . $2;
        $i++;
    } elsif (s!^%\$STEM[\(\)]!%<E>!) {
    }
} continue {
    print;
}

open REPL, ">:utf8", "replace.list";
for (my $j=0; $j<=$#repl; $j++) {
    print REPL "s{\\\.", $chars[$j], "}{", $repl[$j], "};\n";
}
print REPL "s/#/\./g;\n";
