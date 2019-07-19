#!/bin/sh

set -o errexit
set -o nounset

bundle install
bundle exec jekyll build
cd build
git init
git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"
git add .
git commit -m "build gh-pages at $(date +%Y%m%dT%H%M)"
git push --force "https://${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" gh-pages
