#!/bin/bash

REGISTORY="registry.cn-qingdao.aliyuncs.com/icommon"

docker run --name elasticsearch --privileged --restart=always -d -ti -v /opt/product/data/:/opt/product/data/ -p 9200:9200 -p 9300:9300 $REGISTORY/elasticsearch:v1.0

docker run --name filebeat --restart=always --hostname=app_1 -d -ti -v /opt/product/data:/opt/product/data $REGISTORY/filebeat:v1.0

docker run --name kibana --restart=always -d -ti -v /opt/product/data:/opt/product/data -p 5601:5601  $REGISTORY/kibana:v1.0

docker run --name logstash --restart=always -d -ti -v /opt/product/data:/opt/product/data -p 5044:5044 -p 4560:4560 -p 18080:8080 $REGISTORY/logstash:v1.0
