FROM alpine

LABEL maintainer Rodja Trappe <trappe@zauberzeug.com>

RUN apk --update add git less openssh \
    util-linux pciutils usbutils coreutils binutils findutils grep \
    bash bash-doc bash-completion && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

WORKDIR /root

CMD [“bash”]