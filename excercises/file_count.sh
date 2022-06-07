#! /bin/bash

function file_count() {
  local dir=$1
  local FILE_COUNT=$(ls $dir | wc -l)
  echo $dir
  echo $FILE_COUNT
}

DIRECTORY=$1

file_count $DIRECTORY