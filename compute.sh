#!/bin/bash

#START SCRIPT

echo "Enter an integer: "
 read n1
echo "Enter another integer: "
 read n2
echo "Enter an operation (add, sub, mul, div, exp):"
 read opp

if [[ -z $opp ]]; then
  echo "Operation not given"
fi

if [[ "$opp" == "add" ]]; then
  n=$(( $n1 + $n2))
  echo "$n"
elif [[ "$opp" == "sub" ]]; then
  n=$(( $n1 - $n2))
  echo "$n"
elif [[ "$opp" == "mul" ]]; then
  n=$(( $n1 * $n2))
  echo "$n"
elif [[ "$opp" == "div" ]]; then
  n=$(( $n1/$n2))
  echo "$n"
elif [[ "$opp" == "exp" ]]; then
  n=$(( $n1**$n2))
  echo "$n"
fi
#END SCRIPT 
