#!/bin/sh

host="$1"
shift
cmd="$@"

until nc -z "$host" 3306; do
  echo "Waiting for database connection at $host..."
  sleep 2
done

exec $cmd
