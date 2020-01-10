#!/bin/bash

#START SCRIPT

if [[ $# -ne 1 ]]; then
  echo "Must enter one arg"
elif [[ ! -f $1 ]]; then
  echo "Wrong"
fi

file="$1"
p="$(ls -l $file)"

if [ ! -x $file ]
then
  if [[ $p == *"x"* ]]; then
  then
    echo "File permissions have been set for a file that is not executable. Making file executable"
    chmod 666 $1
  fi
fi

user = "$(ls -l $1 | cut -c1-4)"
group = "$(ls -l $1 | cut -c5-8)"
other = "$(ls -l $1 | cut -c9-12)"

if [ -x $1 ]
then
  if [[ $user != *"x" ]]; then
    echo "The user is not permitted to execute the file, would you like to give execution permission?"
    read $ans
  fi
fi

if [[ $ans == "y" ]]; then
  chmod 700 $1
fi

if [ -x $1 ]
then
  if [[ $group != *"x"* ]]; then
    echo "Group is not permitted to execute the file, would you like to give execution permission?"
    read $ans1
  fi
fi

if [[ $ans1 == "y" ]]; then
  chmod 070 $1
fi
