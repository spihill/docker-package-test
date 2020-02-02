#!/bin/bash

# $1 CXX

cd src
oj-verify run
${1} test.cpp -Wall && ./a.out