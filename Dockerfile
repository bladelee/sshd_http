FROM daocloud.io/library/python:2.7.11-alpine

MAINTAINER zhoujunqian <zjqzero@gmail.com>

ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN:zh:en_US:en

CMD  ["/usr/bin/python", "http_svr.py", "80"]

