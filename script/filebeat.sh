#!/bin/bash
export JAVA_HOME=/opt/product/tools/jdk1.8.0_121
export PATH=$JAVA_HOME/bin:$PATH
cd /opt/product/filebeat-5.3.0/
rm -rf filebeat.yml
ln -s /opt/product/data/elk/filebeat.yml . 
rm -rf data 
ln -s /opt/product/data/elk/filebeatdata /opt/product/filebeat-5.3.0/data
/opt/product/filebeat-5.3.0/filebeat -e -c filebeat.yml
