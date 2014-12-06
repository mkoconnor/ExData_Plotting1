#!/bin/sh

for file in $(dirname $0)/*.R; do
    R --vanilla --slave < $file
done
