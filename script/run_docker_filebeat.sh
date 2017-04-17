#!/bin/bash

docker run -d -ti --name filebeat --restart=always --hostname=app_1 -v /opt/product/data:/opt/product/data  filebeat:v1.0 /bin/bash
