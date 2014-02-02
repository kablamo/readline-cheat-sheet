#!/usr/bin/env perl

use strict;
use warnings;
use lib 'local/lib/perl5';

use Text::Xslate;
use Path::Class;
use YAML qw/LoadFile/;

my $in_dir   = dir('root/tx');
my $out_dir  = dir('public');
my $out_file = $out_dir->file('emacs.html');

my $columns  = LoadFile "root/tx/data.yml";
my $vars     = { columns => $columns };
my $string   = Text::Xslate->new(path => $in_dir)
    ->render('index.tx', $vars);

$out_dir->mkpath;
$out_file->spew($string);

