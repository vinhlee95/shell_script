#! /bin/bash

INPUT=$1
APP="Firefox"

cd /Applications

case $INPUT in
start)
  echo "Opening $APP..."
  open -a $APP https://www.google.com
  ;;

stop)
  echo "Closing $APP"
  PID_ID=$(ps -ef | grep firefox | cut -d" " -f3 | sed '1!d')
  kill $PID_ID
  if [ $? -eq 0 ]
  then
    echo "Closed $APP"
  else
    echo "Failed to close $APP"
  fi
  ;;

*)
  echo "Error input. Only start or stop"
  ;;

esac
  
