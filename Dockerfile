FROM debian:12.6

RUN apt-get update &&\
    apt-get -y install --no-install-recommends bzip2 xz-utils zip unzip tar

ENTRYPOINT [ "tar" ]
CMD [ "" ]
