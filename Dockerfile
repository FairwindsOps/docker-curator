# Docker Definition for ElasticSearch Curator

FROM python:2.7.13-slim
MAINTAINER ReactiveOps <ops@reactiveops.com>

RUN pip install --quiet elasticsearch-curator

ENTRYPOINT [ "/usr/local/bin/curator" ]