FROM debian:12.8@sha256:b877a1a3fdf02469440f1768cf69c9771338a875b7add5e80c45b756c92ac20a

RUN apt-get update &&\
    apt-get -y install --no-install-recommends bzip2 xz-utils zip unzip tar

ENTRYPOINT [ "tar" ]
CMD [ "" ]
