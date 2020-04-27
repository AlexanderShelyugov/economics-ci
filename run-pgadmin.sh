sudo docker run -p 81:80 \
    -e 'PGADMIN_DEFAULT_EMAIL=user@domain.com' \
    -e 'PGADMIN_DEFAULT_PASSWORD=SuperSecret' \
    #--network="pgnetwork" \
    -d dpage/pgadmin4