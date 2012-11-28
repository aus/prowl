#! /bin/sh
# Script by aus
# Requirements: curl
# Usage: ./prowl.sh priority(-2 to 2) appname description
# Example: ./prowl.sh 0 "hello world" "this is only a test"
app="Application Name"
message=$1
title=$2
url=$3
url_title=$4
priority=$5
device=$6
userkey=YOURUSERKEY # Look at https://pushover.net/ to find your user key
apikey=YOURAPIKEY # Replace YOURAPIKEY with your key

if [ $# -lt 1 ]; then
	echo 'prowl'
	echo 'Usage: ./pushover.sh message title url url_title priority device'
	echo 'Example: ./pushover.sh "this is a test" "test title" "http://github.com" "GitHub" 0 "iPad"'
	echo 'Note: All parameters except message are optional'
else
	curl https://api.pushover.net/1/messages.json -F token=$apikey -F user=$userkey -F message="$message" -F title="$title" -F url="$url" -F url_title="$url_title" -F priority="$priority" -F device="$device"
fi
