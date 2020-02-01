#!/bin/bash

# $1 username
# $2 library_repo
# $3 token

git clone https://${1}:${3}@github.com/${1}/${2}.git

cd ${2} && oj-verify run --jobs 2