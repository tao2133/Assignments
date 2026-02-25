#!/bin/bash

file=Year_Mag_Country.tsv
y=$1

answer=$(grep "$y" "$file"|wc -l)

largest=$(grep "$y" "$file"|sort -g -k2| tail -1)
echo "$y=$answer $largest"
