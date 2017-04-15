# elkb-5.3.0

https://www.elastic.co/downloads

add pack to /opt/product/elk

mkdir -p /opt/product/data/elk/{elasticsearchdata,filebeatdata,kibanadata,logstashdata}

mkdir -p /opt/product/elk

docker build -f Dockerfile.elasticsearch -t elasticsearch:v1.0 ./
docker build -f Dockerfile.logstash -t logstash:v1.0 ./
docker build -f Dockerfile.kibana -t kibana:v1.0 ./
docker build -f Dockerfile.filebeat -t filebeat:v1.0 ./
