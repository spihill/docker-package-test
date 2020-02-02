#!/bin/bash

# $1 CXX

set -eu

cd /src
git init
g++ -dumpversion
export CXX=${1}
env -u GITHUB_TOKEN oj-verify run
${1} test.cpp -std=c++17 -Wall && ./a.out