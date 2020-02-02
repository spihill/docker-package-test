#!/bin/bash

# $1 CXX

oj-verify run
${1} test.cpp -Wall && ./a.out