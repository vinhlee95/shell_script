#! /bin/bash -x
PS4='+ $BASH_SOURCE:$LINENO: '

read -p "Enter your answer: " ANSWER

case $ANSWER in
  [Yy]* ) echo "You said yes";;
  [Nn]* ) echo "You said no";;
  * ) echo "Please answer yes or no.";;
esac