#!/bin/bash
read str
echo "$str" | rev
echo "$str" | rev | tr "[a-y]" "[b-z]" | tr z a |tr "[A-Y]" "[B-Z]"
revstr=`echo ${str:0:((${#str}/2))} | rev`
echo "$revstr${str:((${#str}/2))}"
