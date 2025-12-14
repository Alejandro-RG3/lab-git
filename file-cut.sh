#!/bin/bash

file=$1

TOTAL_LINES=$(wc -l < "$file")
CUT_LINES=$((TOTAL_LINES / 19))

head -n "$CUT_LINES" "$file" > "cut_$file"
