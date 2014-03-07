use strict;
use warnings;

use Plack::Builder;
use YAML qw/LoadFile/;

my $emacs_data = LoadFile "root/tx/data-emacs.yml";
my $vi_data    = LoadFile "root/tx/data-vi.yml";

builder {
    enable "Rewrite", rules => sub { s|index.html|emacs.tx| };
    enable "Xslate", 
        path         => qr|vi.tx|,
        root         => 'root/tx',
        xslate_vars  => { columns => $vi_data },
        pass_through => 1;
    enable "Xslate", 
        path         => qr|emacs.tx|,
        root         => 'root/tx',
        xslate_vars  => { columns => $emacs_data },
        pass_through => 1;
}

