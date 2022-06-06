#! /bin/bash
echo "Enter the file name"
read FILE

DIR_NAME="excercises/check_file"
FILE_PATH="$PWD/$DIR_NAME/$FILE"

# Check if it is a regular file
if [ -f $FILE_PATH.* ]
then
  echo "It is a regular file"
elif [ -d $FILE_PATH ]
then
  echo "It is a directory"
else
  echo "It is neither a regular file nor a directory"
fi

echo "Results: "
ls -l $FILE_PATH.*