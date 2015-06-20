#!/bin/bash

rm Dockerfile
envsubst < Dockerfile.gitlab-ci-multi-runner > Dockerfile
docker build -t gitlab-runner --no-cache .
