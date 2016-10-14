# TODO: move to alpine
FROM debian:jessie
ARG binary
ADD ${binary} /usr/local/bin/${binary}
RUN if [ ${binary} = hyperkube ] ; then ln /usr/local/bin/hyperkube /hyperkube ; fi
RUN \
  export DEBIAN_FRONTEND=noninteractive ; \
  apt-get -qq update ; \
  apt-get -qq -y install iptables ; \
  ls /var/lib/apt/lists/* /tmp/* /var/tmp/* | xargs -n 1 rm -f -v ;
