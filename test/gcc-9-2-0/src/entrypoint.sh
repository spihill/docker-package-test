#!/bin/bash

# $1 CXX

set -eu

cd /src

g++ -dumpversion
${1} test.cpp -std=c++17 -Wall && ./a.out