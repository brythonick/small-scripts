#!/bin/bash

# Wrapper for texcount, for checking the thesis sections.

total_count=0

for section_name in `ls sections | grep .tex`; do
	section_count=`texcount sections/$section_name | awk '/Words in text/ {print $4}'`
	((total_count += section_count))
	echo "$section_name: $section_count"
done


echo "TOTAL: $total_count"
