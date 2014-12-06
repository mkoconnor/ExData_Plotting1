#!/bin/sh

for file in $(dirname $0)/plot*.R; do
    R --vanilla --slave < $file
done
