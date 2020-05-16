#!/bin/bash
source variables.sh
mkdir ${POSTGRES_VOLUME_PATH}
docker volume create \
    --name economics-database-volume \
    --opt type=none \
    --opt device=${POSTGRES_VOLUME_PATH} \
    --opt o=bind