#!/bin/bash
PROJECT_FOLDER=
sh ./build-database.sh
PROJECTS='economics-client economics-server-products economics-server-warehouse economics-server-eureka'

for PROJECT in $PROJECTS
do
    cd $PROJECT_FOLDER/$PROJECT
    sh ./build.sh
done