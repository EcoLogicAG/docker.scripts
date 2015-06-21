#!/bin/bash

rm Dockerfile
envsubst < Dockerfile.orig > Dockerfile
docker build -t gitlab-runner --no-cache .
