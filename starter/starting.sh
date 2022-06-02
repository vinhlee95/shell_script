#! /bin/bash

# Variable
SERVER_NAME="localhost"
echo "Script is running on ${SERVER_NAME}"

# Condition
YOUR_CAR_BRAND="BMW"
MY_CAR_BRAND="Audi"
if [ $YOUR_CAR_BRAND = $MY_CAR_BRAND ]
then
    echo "Your car is same as mine"
else
    echo "Your car is different from mine"
fi

# For loop
for PHONE in "iPhone" "Samsung" "Xiaomi"
do
  echo "I have ${PHONE}"
done

# A bit more complicated with if/else
for PHONE in "iPhone" "Samsung" "Xiaomi"
do
  if [ $PHONE = "iPhone" ]
  then
    echo "I have ${PHONE}. Awesome!"
  elif [ $PHONE = "Samsung" ]
  then
    echo "I have ${PHONE}. It's ok!"
  else
    echo "I have ${PHONE}. It sucks!"
  fi
done