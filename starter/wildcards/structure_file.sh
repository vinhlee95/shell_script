#! /bin/bash

for FILE in *.html
do
  if [ -f ${PWD}/html ]
  then
    echo "Processing $FILE..."
    cp $FILE ${PWD}/html/
  else
    echo "Creating html directory..."
    mkdir ${PWD}/html/
    cp $FILE ${PWD}/html/
  fi
done

if [ $? -eq 0 ]
then
  echo "File restructuring successful"
else
  echo "File restructuring failed $?"
fi