#!/bin/bash
wc -c $1 | awk '{print "Size:" $1}'
wc -l $1 | awk '{print "Number of Lines:" $1}'
wc -w $1 | awk '{print "Number of Words:"$1}'
awk '{print "Line No: " NR " - Count:" NF }' $1
cat $1 | tr [:space:] '\n' | tr ['.',',',':','!','~','?','(',')'] '\n' | sort | uniq -c | awk '{print "Word: " $2 " - Count of repetition: " $1}'

