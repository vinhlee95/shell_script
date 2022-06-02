#! /bin/bash
# Function to backup a file to /tmp directory
function backup_file() {
  local FILE_NAME="$(date +%Y%m%d)-$1"
  local FILE_PATH="${PWD}/tmp/"

  # Check if we have backed up the file
  if [ -f $FILE_PATH/$FILE_NAME ]
  then
    echo "Already backed up $FILE_NAME."
    return 0
  else
    perform_backup $1 $FILE_PATH $FILE_NAME
  fi
}

function perform_backup() {
  # Perform the backup
  # $1 = file to backup
  # $2 = path to backup to
  # $3 = name of backup file

  # Check if the backup file exists
  if [ -f $1 ]
  then
    # Backup the file
    echo "Backing up $3 to $2"

    # If there is no /tmp directory, create one
    if [ ! -d $2 ]
    then
      echo "Create new temp directory"
      mkdir $2
    fi

    cp $1 $2/$3
    return 0
  else
    echo "File $1 does not exist"
    return 1
  fi
}

# read -p "Enter the file to be backed up: " FILE
backup_file $FILE

if [ $? -eq 0 ]
then 
  echo "File backup successful"
else
  echo "File backup failed $?"
fi