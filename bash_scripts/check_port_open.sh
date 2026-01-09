#!/bin/bash

# Pass 2 parameters 1st host and 2nd port to check

host=$1
port=$2

if nc -zv $host $port 2>/dev/null;
then
	echo "Port $port is open for $host"
else

	echo "Port $port is not open for $host"
fi
