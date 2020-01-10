#!/bin/bash

#START SCRIPT

current_date=$(date +%l:%M%P)

echo -n "user:"
 read user
echo -n "password:"
 read password

 if [ $user != "curt" ]; then
  echo "You are not a registered user"
elif [ $password != "curt"]; then
 echo "Incorrect password"
else
  echo "Welcome to $HOSTNAME, $USERNAME. You are logged in as $USERNAME and today is $current_date"
fi

#END SCRIPT 
