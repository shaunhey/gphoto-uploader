FROM debian:8

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y wget x11vnc wine xvfb locales xz-utils && \
    apt-get clean

RUN echo en_US.UTF-8 UTF-8  >> /etc/locale.gen && \
    locale-gen

ENV LANG=en_US.UTF-8

RUN cd /tmp && \
    wget https://dl.google.com/dl/picasa/gpautobackup_setup.exe && \
    mkdir /upload

COPY bootstrap.sh /
COPY gphoto.reg /tmp/

CMD ["/bootstrap.sh"]
