if [[ -z $1 ]]; then
 echo "File given is blank"
elif [[ -z $2 ]]; then
  echo "File to output left blank"
elif [[ -z $3 ]]; then
  echo "1st string input left blank"
elif [[ -z $4 ]]; then
  echo "2nd string input left blank"
fi

out = $( sed '/$3/$4' $1 > $2)
echo "$out"
