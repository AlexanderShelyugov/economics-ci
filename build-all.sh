#!/bin/bash
source variables.sh
sh ./build-database.sh
for PROJECT in $PROJECTS
do
    cd $PROJECT_FOLDER/$PROJECT
    sh ./build.sh
done