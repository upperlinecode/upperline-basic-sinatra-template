To run this application in Cloud 9, you'll need to run through a series of commands:

Set up your environment the first time through:
gem install bundler
bundle install

Every time you want to host your webapp, use this:
shotgun -p $PORT -o $IP
