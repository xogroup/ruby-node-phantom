FROM vcarballo/ruby-qt:2.2.8

WORKDIR /tmp
RUN wget -q http://cnpmjs.org/mirrors/phantomjs/phantomjs-2.1.1-linux-x86_64.tar.bz2 -O phantomjs.tar.bz2 \
  && tar xjf phantomjs.tar.bz2 \
  && rm -rf phantomjs.tar.bz2 \
  && mv phantomjs-* phantomjs \
  && mv /tmp/phantomjs/bin/phantomjs /usr/local/bin/phantomjs
