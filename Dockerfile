FROM daocloud.io/library/nginx:alpine

MAINTAINER zhoujunqian <zjqzero@gmail.com>

ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN:zh:en_US:en

RUN apk update
RUN apk add python

COPY http_srv.py /var/app/http_srv.py
COPY PageTransition /home/

COPY default.conf /etc/nginx/conf.d/

COPY run.sh /home/

RUN rm -rf /var/cache/apk/*

WORKDIR /home

EXPOSE 80

ENTRYPOINT /home/run.sh

