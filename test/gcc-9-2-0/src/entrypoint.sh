#!/bin/bash

# $1 CXX

set -eu

cd /src
g++ -dumpversion
env CXX=${1} oj-verify run
${1} test.cpp -std=c++17 -Wall && ./a.out