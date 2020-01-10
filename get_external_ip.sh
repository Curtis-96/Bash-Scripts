#!/bin/bash

file = $(wget www.ipchicken.com)
echo $file

ip = $(grep "[0-9][\.\][0-9][\.\][0-9]")
echo $ip
