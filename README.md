# Tool container images—GitHub actions

![stability][active]

These are container images for tools I use. I remove them here once I find a
better one maintained elsewhere that serves my purposes.

## contents

| Upstream Tool       | Dockerfile              | Size                                |
| ------------------- | ----------------------- | ----------------------------------- |
| none                | base/Dockerfile         | ![base][base_badge]                 |
| [pandoc]            | pandoc/Dockerfile       | ![pandoc][pandoc_badge]             |
| [markdownlint-cli2] | markdownlint/Dockerfile | ![markdownlint][markdownlint_badge] |

<hr>
| [home](https://philoserf.github.io/) | [philoserf.com](https://philoserf.com/) |

<!-- ref -->

[active]: https://masterminds.github.io/stability/active.svg
[base_badge]: https://img.shields.io/badge/5.5%20MB-2%20Layers-blue
[pandoc_badge]: https://images.microbadger.com/badges/image/philoserf/pandoc.svg
[pandoc]: https://github.com/jgm/pandoc
[markdownlint_badge]: https://images.microbadger.com/badges/image/philoserf/markdownlint.svg
[markdownlint-cli2]: https://github.com/DavidAnson/markdownlint-cli2
