FROM ruby:latest

LABEL "maintainer"="Mark Ayers <mark@philoserf.com>"
LABEL "repository"="https://github.com/philoserf/actions"
LABEL "homepage"="https://github.com/philoserf/actions/tree/master/base"

LABEL "com.github.actions.name"="gh-pages"
LABEL "com.github.actions.description"="build and deploy gh-pages"
LABEL "com.github.actions.color"="white"
LABEL "com.github.actions.icon"="check"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
