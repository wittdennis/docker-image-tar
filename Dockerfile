FROM debian:13.1@sha256:72547dd722cd005a8c2aa2079af9ca0ee93aad8e589689135feaed60b0a8c08d

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
