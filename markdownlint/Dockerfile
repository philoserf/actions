FROM node:15-alpine3.13

LABEL "maintainer"="Mark Ayers <mark@philoserf.com>"
LABEL "repository"="https://github.com/philoserf/actions"
LABEL "homepage"="https://philoserf.github.io/actions"

LABEL "com.github.actions.name"="markdownlint"
LABEL "com.github.actions.description"="using markdownlint-cli2"
LABEL "com.github.actions.color"="white"
LABEL "com.github.actions.icon"="check"

RUN npm install --global markdownlint-cli2@0.0.13

ENTRYPOINT ["markdownlint-cli2"]
