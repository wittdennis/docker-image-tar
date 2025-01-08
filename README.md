# tar

Image containing tools to work with archives

## Basic usage

You can use this image with docker or any other container runtime.

### Oneshot use

```bash
docker run --rm -v "${PWD}":/workdir denniswitt/tar [OPTION...] [FILE]...
```

eg.:

```bash
docker run --rm -v "${PWD}":/workdir denniswitt/tar cfJv archive.tar.xz /data
```
