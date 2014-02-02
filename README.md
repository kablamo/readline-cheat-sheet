# Readline Cheat Sheet

A responsive attractive readline cheat sheet.

## Directory layout

.
├── cpanfile             # used by Carton
├── cpanfile.snapshot    # used by Carton
├── html
│   └── index.html       # generated with xslate - do not edit
├── lib
│   └── Readline
│       └── CheatSheet
│           └── Plack.pm
├── README.md
├── script
└── tx
    └── index.tx         # <<< to contribute, edit this


## Install dependencies

Git clone this repo:

    git clone ...

Install [cpanm](https://metacpan.org/pod/App::cpanminus): 

    curl -L http://cpanmin.us | perl - App::cpanminus

Install [Carton](https://metacpan.org/pod/Carton):

    cpanm Carton

Install dependencies to `./local/lib/perl5`:

    carton

# How to view your changes

    plackup -I lib -I local/lib/perl5
