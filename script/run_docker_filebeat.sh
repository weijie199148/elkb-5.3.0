#!/bin/bash

docker run -d -ti -v /opt/product/data:/opt/product/data  filebeat:v1.0 /bin/bash
