#!/bin/bash

TEMP_DIRECTORY_PATH="./tmp"
DIST_DIRECTORY_PATH="./dist"

echo -e "Creating a zip file for distribution...\n\n"

rm -rf ${TEMP_DIRECTORY_PATH}
mkdir ${TEMP_DIRECTORY_PATH}

mkdir -p ${DIST_DIRECTORY_PATH}

cp background.js ${TEMP_DIRECTORY_PATH}
cp LICENSE ${TEMP_DIRECTORY_PATH}
cp manifest.json ${TEMP_DIRECTORY_PATH}
cp -r images ${TEMP_DIRECTORY_PATH}
zip -r ${DIST_DIRECTORY_PATH}/nonhk-dist.zip ${TEMP_DIRECTORY_PATH}

rm -rf ${TEMP_DIRECTORY_PATH}

echo -e "\n\nDone"
