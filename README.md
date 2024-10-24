[![Makefile CI](https://github.com/rzuckerm/quackery-docker-image/actions/workflows/makefile.yml/badge.svg)](https://github.com/rzuckerm/quackery-docker-image/actions/workflows/makefile.yml)

# quackery-docker-image

Docker image for [Quackery programming language](https://github.com/GordonCharlton/Quackery):

- rzuckerm/quackery:`<version>-<tag>`

where:

- `<version>` is the [Quackery version](QUACKERY_VERSION)
- `<tag>` is the current GitHub tag without the "v"

The docker image can be found [here](https://hub.docker.com/r/rzuckerm/quackery).

## Running Quakery

```
run_quackery <filename> [<args> ...]
```

where:

- `<filename>` is the filename of the Quackery program
- `<args>` are command-line arguments passed to the program as newline delimited arguments
  passed to stdin
