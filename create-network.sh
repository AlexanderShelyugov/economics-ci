#!/bin/bash
docker network create \
    --driver=bridge \
    --subnet=192.168.0.0/24 \
    --gateway=192.168.0.1 \
    --ip-range=192.168.0.0/25 \
    -o "com.docker.network.bridge.enable_ip_masquerade"="true" \
    -o "com.docker.network.bridge.enable_icc"="true" \
    economics