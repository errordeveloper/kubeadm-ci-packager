# TODO: move to alpine
FROM debian:jessie
ARG binary
ADD ${binary} /usr/local/bin/${binary}
RUN if [ ${binary} = hyperkube ] ; then ln /usr/local/bin/hyperkube /hyperkube ; fi
