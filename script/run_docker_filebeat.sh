#!/bin/bash

docker run --name filebeat --restart=always --hostname=app_1 -d -ti -v /opt/product/data:/opt/product/data  filebeat:v1.0
