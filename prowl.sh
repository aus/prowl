#! /bin/sh
# Script by aus
# Requirements: curl
# Usage: ./prowl.sh priority(-2 to 2) appname description
# Example: ./prowl.sh 0 "hello world" "this is only a test"
app="Application Name"
priority=$1
eventname=$2
description=$3
apikey=YOURAPIKEY # Replace YOURAPIKEY with your key

if [ $# -ne 3 ]; then
	echo "prowl"
	echo "Usage: ./prowl.sh priority(-2 to 2) appname description"
	echo 'Example: ./prowl.sh 0 "linux" "this is a test"'
else
	curl https://prowl.weks.net/publicapi/add -F apikey=$apikey -F priority=$priority -F application="$app" -F event="$eventname" -F description="$description"
fi
