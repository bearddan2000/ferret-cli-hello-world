#! /bin/sh

FILE=hello && \
    ferret -i $FILE.clj 1>&2 && \
    g++ -std=c++11 -pthread $FILE.cpp -o $FILE && \
    ./$FILE