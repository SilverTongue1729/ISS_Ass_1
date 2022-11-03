#!/bin/bash
grep . quotes.txt
awk '!a[$0]++' quotes.txt

