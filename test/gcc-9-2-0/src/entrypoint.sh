#!/bin/bash

# $1 CXX

set -eu

cd /src
git init 

git config --global user.name "docker-package-test"
git config --global user.email "docker-package-test"

git add . && git commit -m "a"
g++ -dumpversion
export CXX=${1}
$HOME/.local/bin/oj-verify run
${1} test.cpp -std=c++17 -Wall && ./a.out