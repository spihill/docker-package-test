#!/bin/bash

# $1 CXX

cd /src
g++ --version
oj-verify run
${1} test.cpp -std=c++17 -Wall && ./a.out