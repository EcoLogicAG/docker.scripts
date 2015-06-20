#!/bin/bash

docker run -d -p 80:80 -p 443:443 -v /opt/docker/certs:/etc/nginx/certs -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy
