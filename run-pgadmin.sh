#!/bin/bash
docker run -d --rm -p 81:80 \
    -e 'PGADMIN_DEFAULT_EMAIL=user@domain.com' \
    -e 'PGADMIN_DEFAULT_PASSWORD=SuperSecret' \
    dpage/pgadmin4
#--network="pgnetwork" \
