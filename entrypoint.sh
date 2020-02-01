#!/bin/bash

git clone https://${YOUR_GITHUB_USER_NAME}:${CLONE_TOKEN}@github.com/${YOUR_GITHUB_USER_NAME}/${YOUR_GITHUB_REPOSITORY}.git

cd ${2} && oj-verify run --jobs 2