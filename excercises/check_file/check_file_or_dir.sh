#! /bin/bash
DIR_NAME="excercises/check_file"

function check_file() {
  local FILE_NAME=$1
  local FILE_PATH="$PWD/$DIR_NAME/$FILE_NAME"

  # Check if it is a regular file
  if [ -f $FILE_PATH.* ]
  then
    echo "$FILE_NAME is a regular file in $PWD/$DIR_NAME"
  elif [ -d $FILE_PATH ]
  then
    echo "$FILE_NAME is is a directory"
  else
    echo "$FILE_NAME is neither a regular file nor a directory"
  fi
}

function check_files() {
  local FILES=$@
  if [ -z $FILES ]
  then
    echo "You must provide a list of file names."
    return 1
  fi

  for FILE in $FILES
  do
    check_file $FILE
  done
  return 0
}


check_files $@

if [ $? -eq 0 ]
then
  echo "Success. Results: "
  ls -l $PWD/$DIR_NAME
else 
  echo "Failure."
fi
