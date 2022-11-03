#!/bin/bash
IFS=', ' read -r -a arr
echo "${arr[@]}"
len=${#arr[@]}
echo "len=$len"

for (( i=0;i<$len-1;i++ )); do
  change=0;
  for ((j=0;j<$len-$i-1;j++ )); do
    if [[ ${arr[$j]} -gt ${arr[$j+1]} ]]; then
      temp=${arr[$j]};
      arr[$j]=${arr[$j+1]};
      arr[$j+1]=$temp;
      change=1;
    fi
  done

  if [[ $change -eq 0 ]]; then
    break;
  fi
done

echo "${arr[@]}"
