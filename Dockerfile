FROM daocloud.io/library/python:2.7.11-alpine

MAINTAINER zhoujunqian <zjqzero@gmail.com>

ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN:zh:en_US:en

COPY http_srv.py /var/app/http_srv.py

WORKDIR /home

EXPOSE 80

CMD  ["/usr/local/bin/python", "/var/app/http_srv.py", "80"]

