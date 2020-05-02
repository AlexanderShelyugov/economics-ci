# The Economics project

This is the main repository for the Economics project. You can build and run the whole system from here. You can also run [pgAdmin](https://www.pgadmin.org) to connect to a database.

## Table of contents
1. [Pre-build](#Pre-build)
2. [Build](#Build)
3. [Configuration](#Configuration)
4. [Database](#Database)
5. [Project structure](#Project-structure)

## Pre-build
1. You will need to have a [Docker](https://www.docker.com) installed. Also, in order to run you can use either [Docker-compose](https://docs.docker.com/compose) or [Kubernetes](https://kubernetes.io)
1. Edit [`variables.sh`](https://github.com/AlexanderShelyugov/economics-ci/blob/develop/variables.sh) and setup directories, that are ok to you
1. (Optional) `find . -type f -iname "*.sh" -exec chmod +x {} \;` in this project's directory to make all *.sh* files executable
1. Run [`clone-all.sh`](https://github.com/AlexanderShelyugov/economics-ci/blob/develop/clone-all.sh). It will pull the source code of all projects (which are listed in `variables.sh`)

## Build
1. Run [`build-all.sh`](https://github.com/AlexanderShelyugov/economics-ci/blob/develop/build-all.sh). It will build a docker image per project
1. Run [`create-network.sh`](https://github.com/AlexanderShelyugov/economics-ci/blob/develop/create-network.sh) to create a docker network
1. Run [`run-compose.sh`](https://github.com/AlexanderShelyugov/economics-ci/blob/develop/run-compose.sh) to run services in docker compose or [`run-kubernetes.sh`](https://github.com/AlexanderShelyugov/economics-ci/blob/develop/run-kubernetes.sh) to run everything in Kubernetes (work in progress)!

## Configuration
All configuration files for client and servers are located in the [`env`](https://github.com/AlexanderShelyugov/economics-ci/tree/develop/env) directory. They may not reflect a whole configuration, but they are used to let services know about each other. Feel free to check out other projects for their configurations.

## Database
You may have noticed files like [`Dockerfile.database`](https://github.com/AlexanderShelyugov/economics-ci/blob/develop/Dockerfile.database), [`build-database.sh`](https://github.com/AlexanderShelyugov/economics-ci/blob/develop/build-database.sh), [`run-database`](https://github.com/AlexanderShelyugov/economics-ci/blob/develop/run-database.sh). They contain the information about database which is used. This is [PostgreSQL](https://www.postgresql.org). Most of the time you won't have to edit it, it's all set. But you may just know more about it. Currently, all the database migrations are handled locally per server.

## Project structure
The [client](https://github.com/AlexanderShelyugov/economics-client) connects to [products](https://github.com/AlexanderShelyugov/economics-server-products) and [warehouses](https://github.com/AlexanderShelyugov/economics-server-warehouses) servers. Later, there will be one proxy for client. Also, there is an [Eureka server](https://github.com/AlexanderShelyugov/economics-server-eureka) which is going to be used a lot later on. You can find more about Eureka server [here](https://github.com/Netflix/eureka/wiki/Eureka-at-a-glance).