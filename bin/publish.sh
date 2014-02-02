#!/bin/sh

bin/generate.pl && \
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

