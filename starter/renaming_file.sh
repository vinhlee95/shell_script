#! /bin/bash
EXTENSION="test.txt"
FILES=$(ls *test.txt)
DATE=$(date +%Y%m%d)

for FILE in $FILES
do
  if [ -e ${DATE}_${EXTENSION} ]
  then
    echo "File ${FILE} already exists"
  else
    echo "Renaming ${FILE} to ${DATE}_${FILE}"
    mv $FILE ${DATE}_${FILE}
  fi
done