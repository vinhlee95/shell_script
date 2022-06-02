#! /bin/bash
read -p "Enter your name: " NAME
echo "Hello ${NAME}. We will now check what phone you are using."

read -p "Enter the brand of your phone: " PHONE

if [ $PHONE = "iPhone" ]
then
  echo "${PHONE} is awesome!"
elif [ $PHONE = "Samsung" ]
then
  echo "${PHONE} is ok!"
else
  echo "${PHONE} sucks!"
fi