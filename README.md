# elkb-5.3.0

官网地址：https://www.elastic.co/downloads

下载应用包：elasticsearchdata,filebeatdata,kibanadata,logstashdata

版本号: 5.3.0

创建应用包目录: mkdir -p /opt/product/elk

应用包解压到 /opt/product/elk 下，并命令为 *-5.3.0

创建应用日志目录: mkdir -p /opt/product/data/elk/{elasticsearchdata,filebeatdata,kibanadata,logstashdata}

运行以下命令即可获得docker镜像

docker build -f Dockerfile.base -t elkbase:jdk-8 ./

docker build -f Dockerfile.elasticsearch -t elasticsearch:v1.0 ./

docker build -f Dockerfile.logstash -t logstash:v1.0 ./

docker build -f Dockerfile.kibana -t kibana:v1.0 ./

docker build -f Dockerfile.filebeat -t filebeat:v1.0 ./
