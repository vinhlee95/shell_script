#! /bin/bash
function hello() {
  echo "Hello World. Today is $(now). My name is $1"
}

# This function can be called inside another function
function now() {
  echo "$(date +%Y-%m-%d)"
}

for name in Foo Bar Baz
do
  hello $name
done

function sum() {
  local sum=0
  local output="Total of"
  # Traverse through a list of arguments
  for i in $@
  do
    let sum+=i
    output+=" $i"
  done
  echo "$output is: $sum"
}

sum 1 2 3

