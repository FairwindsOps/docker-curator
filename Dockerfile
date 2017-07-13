# Docker Definition for ElasticSearch Curator

FROM python:2.7.13-slim
MAINTAINER ReactiveOps <ops@reactiveops.com>

RUN pip install --quiet elasticsearch-curator===2.1.2

ENV FREQUENCY=3600

ENV CONFIG_PATH=/etc/config/config.yml
ENV ACTION_PATH=/etc/config/action_file.yml

CMD while sleep $FREQUENCY; do /usr/local/bin/curator --config $CONFIG_PATH $ACTION_PATH; done
