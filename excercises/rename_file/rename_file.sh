#! /bin/bash
DEFAULT_PREFIX=$(date +%Y-%m-%d)

# Ask the extension
echo "What is the extension of the file?"
read EXTENSION

echo "What is the prefix of the file?"
echo "Enter for using $DEFAULT_PREFIX"
read PREFIX


echo "Renaming all files"
echo "Extension: $EXTENSION"

cd $PWD/excercises/rename_file

# Check if there is no file with that extension in the directory
if [ ! -f *.$EXTENSION ]
then
  echo "There is no file with that extension in $PWD"
  exit 1
fi

for NAME in *.$EXTENSION
do
  if [ -z "$PREFIX" ]
  then
    mv $NAME $DEFAULT_PREFIX-$NAME
    echo "Renaming $NAME to $DEFAULT_PREFIX-$NAME"
  else
    mv $NAME $PREFIX-$NAME
    echo "Renaming $NAME to $PREFIX-$NAME"
  fi
done