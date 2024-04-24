#!/bin/bash

function guess {
  local file_count=$(ls -1 | wc -l)
  local guess=-1
  while [[ $guess -ne $file_count ]]; do
    echo "Guess the number of files in the current directory:"
    read guess
    if [[ $guess -lt $file_count ]]; then
      echo "Too low!"
    elif [[ $guess -gt $file_count ]]; then
      echo "Too high!"
    else
      echo "Congratulations! You've guessed the correct number of files!"
    fi
  done
}

guess
