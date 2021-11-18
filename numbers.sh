#!/bin/bash
data=$(tail -n+2 "amazon_reviews_us_Books_v1_02.tsv" |  cut -f9 | sort -nr);
max=$(echo "$data" | head -n1);
min=$(echo "$data" | tail -n1);
avg=$(echo "$data" | ~/datamash-1.3/datamash mean 1);
echo "min $min max $max avg $avg";
