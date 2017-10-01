FROM xogroup/ruby-node:2.3.5-slim

USER root

RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends \
    curl \
    libfontconfig1 \
    ruby-dev

RUN mkdir /tmp/phantomjs \
 && curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 | tar -xj --strip-components=1 -C /tmp/phantomjs \
 && mv /tmp/phantomjs/bin/phantomjs /usr/local/bin \
 && apt-get purge --auto-remove -y curl \
 && apt-get clean \
 && rm -rf /tmp/* /var/lib/apt/lists/* 