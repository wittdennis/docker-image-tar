FROM debian:13.3@sha256:3615a749858a1cba49b408fb49c37093db813321355a9ab7c1f9f4836341e9db

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
