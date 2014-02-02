use strict;
use warnings;

use Plack::Builder;
use YAML qw/LoadFile/;

my $columns = LoadFile "root/tx/data.yml";

builder {
    enable "Rewrite", rules => sub { s|.*|index.tx| };
    enable "Xslate", 
        path         => qr|.*|,
        root         => 'root/tx',
        xslate_vars  => { columns => $columns },
        pass_through => 1;
}

