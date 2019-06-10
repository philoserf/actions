# dockerfiles

> a collection of docker images

[![CircleCI][1]][1a] [![Stability:Active][2]][2a]

## contents

| Upstream Tool     | Dockerfile                   | Size                     |
| ----------------- | ---------------------------- | ------------------------ |
| base              | [base/Dockerfile][3]         | 5.5 MB 2 Layers          |
| [markdownlint][4] | [markdownlint/Dockerfile][5] | [![markdownlint][6]][6a] |
| [pandoc][7]       | [pandoc/Dockerfile][8]       | [![pandoc][9]][9a]       |

## Deprecation Notices

[dockerlint][10] will no longer be maintained in favor of [hadolint/hadolint][11]

[1]: https://circleci.com/gh/philoserf/dockerfiles.svg?style=shield
[1a]: https://circleci.com/gh/philoserf/dockerfiles "circleci"
[2]: https://masterminds.github.io/stability/active.svg
[2a]: https://masterminds.github.io/stability/active.html "active"
[3]: base/Dockerfile "Dockerfile"
[4]: https://github.com/DavidAnson/markdownlint "upstream"
[5]: markdownlint/Dockerfile "Dockerfile"
[6]: https://images.microbadger.com/badges/image/philoserf/markdownlint.svg
[6a]: https://microbadger.com/images/philoserf/markdownlint "microbadger"
[7]: https://github.com/jgm/pandoc "upstream"
[8]: pandoc/Dockerfile "Dockerfile"
[9]: https://images.microbadger.com/badges/image/philoserf/pandoc.svg
[9a]: https://microbadger.com/images/philoserf/pandoc "microbadger"
[10]: https://github.com/RedCoolBeans/dockerlint "upstream"
[11]: https://hub.docker.com/r/hadolint/hadolint
