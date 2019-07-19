#!/bin/sh

set -o errexit
set -o nounset

remote_repo="https://${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"

echo ${GITHUB_REPOSITORY} | grep -E '^([a-z]*)\/\1\.github\.io$' >/dev/null
if [ $? -eq 0 ]; then
	remote_branch="master"
else
	remote_branch="gh-pages"
fi

if [ "${GITHUB_REF}" == "refs/heads/${remote_branch}" ]; then
	echo "Cannot publish on branch ${remote_branch}"
	exit 1
fi

bundle install
bundle exec jekyll build
cd build
git init
git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"
git add .
git commit -m "jekyll build at $(date +%Y%m%dT%H%M)"
git push --force $remote_repo master:$remote_branch
