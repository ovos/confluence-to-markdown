#!/usr/bin/env bash

set -x

INPUT_FILE=$1

yarn install

unzip -o ${INPUT_FILE} -d data

yarn start data data/docs

cd data/docs

find . -type f -name 'index.md' -execdir mv {} README.md \;

cd ../../

zip -r "docs-${INPUT_FILE}" data/docs/

rm -rf data
