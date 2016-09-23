FROM gliderlabs/alpine:3.4
MAINTAINER Wisicn <wisicn@gmail.com>
RUN apk-install  libsodium py-pip supervisor \
    && pip install https://github.com/shadowsocks/shadowsocks/archive/2.9.0.zip

EXPOSE 8388

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
