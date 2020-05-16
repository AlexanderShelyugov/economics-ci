#!/bin/bash
source variables.sh

cd database
sh ./build.sh
cd ..

cd reverse-proxy
sh ./build.sh

for PROJECT in $PROJECTS
do
    cd $PROJECT_FOLDER/$PROJECT
    sh ./build.sh
done