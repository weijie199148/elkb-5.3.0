#!/bin/bash
export JAVA_HOME=/opt/product/tools/jdk1.8.0_121
export PATH=$JAVA_HOME/bin:$PATH
cd /opt/product/kibana-5.3.0/config/
rm -rf kibana.yml
ln -s /opt/product/data/elk/kibana.yml . 
cd /opt/product/kibana-5.3.0/
rm -rf data
ln -s  /opt/product/data/elk/kibanadata /opt/product/kibana-5.3.0/data
/opt/product/kibana-5.3.0/bin/kibana
