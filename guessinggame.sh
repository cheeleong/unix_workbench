#!/usr/bin/env bash

function prompt {
  read -p "Please guess how many file in current directory? " input
  echo $input
} 

prompt1=1
count=$(ls | wc -l)

while [[ $prompt1 -ne $count ]]
do
  prompt1=$(prompt)
  if [[ $prompt1 -gt $count ]]
  then
    echo "Too high"
  elif [[ $prompt1 -lt $count ]]
  then
     echo "Too low"
  else
    echo "Congratulation! You guessed correctly."
  fi
done
