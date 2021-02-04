FROM alpine:3.13

LABEL "maintainer"="Mark Ayers <mark@philoserf.com>"
LABEL "repository"="https://github.com/philoserf/actions"
LABEL "homepage"="https://github.com/philoserf/actions/tree/master/base"

LABEL "com.github.actions.name"="base"
LABEL "com.github.actions.description"="a base for all other actions"
LABEL "com.github.actions.color"="white"
LABEL "com.github.actions.icon"="check"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
