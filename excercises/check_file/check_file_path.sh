#! /bin/bash

DIR_NAME="excercises/check_file"
FILE_PATH="$PWD/$DIR_NAME/bar.txt"

if [ -f $FILE_PATH ]
then
  echo "$FILE_PATH passwords are enabled"

  # Check if the file is writeable
  if [ -w $FILE_PATH ]
  then
    echo "$FILE_PATH is writeable"
  else
    echo "$FILE_PATH is not writeable"
  fi

else
  echo "$FILE_PATH does not exist"
fi