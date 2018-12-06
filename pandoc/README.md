# Pandoc Dockerfile

[![Docker][1]](https://hub.docker.com/r/philoserf/pandoc)
[![Quay][2]](https://quay.io/repository/philoserf/pandoc)
[![Stability: Sustained][3]](https://masterminds.github.io/stability/sustained.html)

## Example Use

``` shell
docker run --volume $PWD:$PWD --workdir $PWD --interactive --tty --rm \
  philoserf/pandoc --from=markdown --to=gfm --wrap=none --output=README.md README.md
```

- [Dockerfile][4]
- [Pandoc Site][5]
- [Pandoc Code][6]

[1]: https://img.shields.io/docker/build/philoserf/pandoc.svg "Docker"
[2]: https://quay.io/repository/philoserf/pandoc/status "Quay"
[3]: https://masterminds.github.io/stability/sustained.svg "Sustained"
[4]: Dockerfile "Dockerfile"
[5]: http://pandoc.org/ "pandoc.org"
[6]: https://github.com/jgm/pandoc "pandoc source code"
****
