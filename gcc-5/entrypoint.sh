#!/bin/bash

git clone https://${user_name}:${token}@github.com/${user_name}/${library_repo}.git

cd ${2} && oj-verify run --jobs 2