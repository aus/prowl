Scripts to send push notifications to [Pushover](https://pushover.net/) and [Prowl](http://prowlapp.com/) using `curl`.

### prowl.sh ###

Usage: `./prowl.sh priority(-2 to 2) appname description`
Example: `./prowl.sh 0 "hello world" "this is only a test"
app="Application Name"`

### pushover.sh ###

Usage: `./pushover.sh message title url url_title priority device`
Example: `./pushover.sh "this is a test" "test title" "http://github.com" "GitHub" 0 "iPad"`
Note: *All parameters except message are optional*