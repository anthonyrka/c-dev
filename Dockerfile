FROM ubuntu:trusty

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y \
        build-essential \
        linux-headers-generic \
        vim exuberant-ctags \
        bash-completion \
        gdb \
        libc-dbg \
        colormake \
        man-db manpages-dev \
        less \
        locate \
        tree

RUN updatedb

WORKDIR /root

CMD ["/bin/bash"]
