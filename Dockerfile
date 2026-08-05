FROM debian:13.6@sha256:34cd9e9fd437c0a095ec39cb2e73422c9f30821b0d0848ed74fd0d43bae4d958

RUN apt-get update &&\
    apt-get -y install --no-install-recommends bzip2 xz-utils zip unzip tar

WORKDIR /workdir

RUN set -eux; \
    groupadd -g 1000 tar; \
    useradd -u 1000 -g 1000 -s /bin/sh -m -b /home/tar tar

RUN chown -R tar:tar /workdir

USER tar

ENTRYPOINT [ "tar" ]
CMD [ "" ]
