source variables.sh
docker run -d --rm -p 5432:5432 \
	#--network="pgnetwork" \
	-v $POSTGRES_VOLUME_PATH:/var/lib/postgresql/data \
	economics:database