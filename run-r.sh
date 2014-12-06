#!/bin/sh

# Filter dataset to just dates we're interested for efficiency.  It's
# also filtered again in the R code, which won't hurt (I started
# filtering there and just left it in).

unfiltered_file=~/Downloads/household_power_consumption.txt

( head -n 1 ${unfiltered_file}; grep -E '^[12]/2/2007;' ${unfiltered_file} ) > filtered_power_consumption.txt

for file in $(dirname $0)/plot*.R; do
    R --vanilla --slave < $file
done
