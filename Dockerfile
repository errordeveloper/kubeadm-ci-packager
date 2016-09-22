FROM golang:1.6

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update -y \
    && apt-get -yy -q install --no-install-recommends --no-install-suggests --fix-missing \
      rsync \
      python3 \
      dpkg-dev \
      build-essential \
      debhelper \
      dh-systemd \
      ruby-dev \
      rubygems \
    && gem install fpm package_cloud \
    && go get -u github.com/jteeuwen/go-bindata/go-bindata \
    && apt-get upgrade -y \
    && apt-get autoremove -y \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV PATH "/usr/local/bundle/bin:${PATH}"
