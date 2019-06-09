FROM alpine:3.9

LABEL "maintainer"="Mark Ayers <mark@philoserf.com>"
LABEL "repository"="https://github.com/philoserf/dockerfiles"
LABEL "homepage"="https://github.com/philoserf/dockerfiles/tree/master/base"

LABEL "com.github.actions.name"="base"
LABEL "com.github.actions.description"="a base for all other actions"
LABEL "com.github.actions.color"="white"
LABEL "com.github.actions.icon"="check"

COPY entrypoint.sh .

ENTRYPOINT ["./entrypoint.sh"]
