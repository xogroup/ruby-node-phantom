FROM vcarballo/ruby-qt:5.5.1

RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends \
    curl \
    nodejs 
 
RUN mkdir /tmp/phantomjs 
RUN curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 \
    | tar -xj --strip-components=1 -C /tmp/phantomjs \
 && mv /tmp/phantomjs/bin/phantomjs /usr/local/bin \
 && apt-get purge --auto-remove -y curl \
 && apt-get clean \
 && rm -rf /tmp/* /var/lib/apt/lists/* 
