#!/usr/bin/env bash

if [[ $# -ne 0 ]]; then
  echo "No arguments should be given on script execution"
fi

echo "Enter file name"
read $fin

if [[ ! -f $fin ]]; then
  echo "No such file"
fi

sudo groupadd users

while IFS=',' read -r l f; do
  r = "${l:0:1}"
  result = "$f$r"
  final=$( echo "$result" | tr 'A-Z' 'a-z' )
  if [[ ! -z "$(getent passwd $final)" ]]; then
    new="$final$i"
    i=$((i+1))
  sudo useradd -m $final
  pswd=$( head /dev/urandom | tr -dc 'A-Za-z0-9' | head -c 8; > /tmp/pw.tmp )
  cat /tmp/pw.tmp | chpasswd $final > /dev/null
done < $fin
