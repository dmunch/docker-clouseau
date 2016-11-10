FROM dmunch/scala:2.12.0-RC2

RUN \
    echo "==> Install erlang-base for epmd..."  && \
    apt-get update  && \
    DEBIAN_FRONTEND=noninteractive  apt-get install -y --force-yes erlang-base && \
    echo "===> clean up..."  && \
    apt-get clean                          && \
    rm -rf /var/lib/apt/lists/*

ADD docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
 
ADD clouseau-2.10.0-SNAPSHOT.tar.gz /jar/
ADD test-classes /jar/test-classes

WORKDIR /jar
RUN touch clouseau.ini

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["clouseau"]