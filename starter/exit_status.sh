HOST="google.com"
HOST_1="amazon.com"
INVALID_HOST="foo.com.bar"


# IF/ELSE version
# ping -c 1 $HOST
# RETURN_CODE=$?
# if [ $RETURN_CODE -eq 0 ]; then
#   echo "Host $HOST is reachable"
# else
#   echo "Host $HOST is not reachable. Return code: $RETURN_CODE"
# fi

# AND and OR version
# -w specify timeout
# ping -c 1 -W 5 $HOST && echo "Host $HOST is reachable" && exit 0 || echo "Host $HOST is not reachable" && exit 1;

# ping -c 1 -W 2 $HOST_1 && echo "Host $HOST_1 is reachable" || echo "Host $HOST_1 is not reachable. Status code is $?"

for host in $HOST $HOST_1 $INVALID_HOST
do
  ping -c 1 -W 2 $host && 
  echo "Host $host is reachable" || 
  echo "Host $host is not reachable. Status code is $?"
done