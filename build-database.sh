#docker network create --gateway 172.16.238.1 --subnet 172.16.238.0/24 --driver bridge pgnetwork
docker build . -f Dockerfile.database -t economics:database