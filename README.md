# Readline Cheat Sheet

A mobile friendly readline cheat sheet.  Currently it just covers the Emacs
editing mode.

## How to contribute

Clone the repo:

    git clone git@github.com:kablamo/readline-cheat-sheet.git

Edit one of the following files:

    root/tx/data.yml         # data as yaml
    root/tx/index.tx         # template (Text::Xslate)
    root/tx/style.css        # css stylesheet

## How to view your changes

Install dependencies with [cpanm](https://metacpan.org/pod/App::cpanminus)
and [Carton](https://metacpan.org/pod/Carton):

    curl -L http://cpanmin.us | perl - App::cpanminus  # install cpanm
    cpanm Carton                                       # install Carton
    carton                                             # install dependencies

Start the web server:

    plackup -I local/lib/perl5

View the page in your browser:

    http://localhost:5000/

## Directory layout

    .
    ├── app.psgi                         # Plack web app for development
    ├── bin
    │   ├── generate.pl
    │   └── publish.sh
    ├── cpanfile                         # CPAN dependencies for Carton
    ├── cpanfile.snapshot
    ├── README.md
    └── root
        ├── html
        │   └── index.html               # generated with Text::Xslate
        └── tx
            ├── bootstrap.theme.min.css
            ├── data.yml                 # <<< to contribute, edit this
            ├── index.tx                 # <<< or this
            └── style.css                # <<< or this

[![Flattr this Git repo](http://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=kablamo&url=https://github.com/kablamo/readline-cheat-sheet&title=Readline%20Cheat%20Sheet&language=EN&tags=github&category=software)

