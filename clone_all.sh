#!/bin/bash
source ./variables.sh
mkdir $PROJECT_FOLDER
cd $PROJECT_FOLDER
for PROJECT in $PROJECTS
do
    git clone -b develop git@github.com:AlexanderShelyugov/$PROJECT.git
done