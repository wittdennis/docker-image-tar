FROM debian:13.4@sha256:3352c2e13876c8a5c5873ef20870e1939e73cb9a3c1aeba5e3e72172a85ce9ed

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
