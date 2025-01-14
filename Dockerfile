FROM debian:12.9@sha256:321341744acb788e251ebd374aecc1a42d60ce65da7bd4ee9207ff6be6686a62

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
