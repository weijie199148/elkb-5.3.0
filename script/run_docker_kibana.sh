#!/bin/bash

docker run  --restart=always -d -ti -v /opt/product/data:/opt/product/data -p 5601:5601  kibana:v1.0 /bin/bash
