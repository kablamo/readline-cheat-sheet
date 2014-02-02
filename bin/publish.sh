#!/bin/sh

perl -I ./local/lib/perl5 xslate ... && \
git co gh-pages && \
cp -r public/* . && \
rm -r public && \
git add -A && \
git status && \
git commit -a -m 'More' && \
git push && \
git co master && \
git push && \
git branch

