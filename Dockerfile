FROM debian:stretch-slim

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y ca-certificates wget x11vnc wine32 wine xvfb xz-utils && \
    apt-get clean

RUN cd /tmp && \
    wget https://dl.google.com/dl/picasa/gpautobackup_setup.exe && \
    mkdir /upload

COPY bootstrap.sh /
COPY gphoto.reg /tmp/

CMD ["/bootstrap.sh"]
