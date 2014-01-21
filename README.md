# PI

[![Build Status](https://travis-ci.org/pmanko/pi.png?branch=master)](http://travis-ci.org/pmanko/pi)
[![Dependency Status](https://gemnasium.com/pmanko/pi.png)](https://gemnasium.com/pmanko/pi)
[![Code Climate](https://codeclimate.com/github/pmanko/pi.png)](https://codeclimate.com/github/pmanko/pi)

PI (short for Patient Interface) is a web application designed for providing patients and study subjects an interactive portal to view, update, and visualize their information. The application is built using Rails 4.0+, Ruby 2.1.0+, and Bootstrap 3.

## Installation
**These instructions assume the following tools are installed:**
- Git 1.8+ (http://git-scm.com/)
- Ruby 2.1.0 (https://www.ruby-lang.org/en/installation)

1.
```
gem install bundler
```
2.
**This README assumes the following installation directory:** `/var/www/pi`

```
cd /var/www

git clone https://github.com/pmanko/pi.git

cd pi

bundle install
```

3.
Install default configuration files for database connection, email server connection, server url, and application name.

```
ruby lib/initial_setup.rb

bundle exec rake db:migrate RAILS_ENV=production

bundle exec rake assets:precompile RAILS_ENV=production
```

4.
Run Rails Server (or use Apache or nginx)

```
rails s -p80
```
5.
Open a browser and go to: [http://localhost](http://localhost)

All done!

## Contributing to the Pi

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright [![Creative Commons 3.0](http://i.creativecommons.org/l/by-nc-sa/3.0/80x15.png)](http://creativecommons.org/licenses/by-nc-sa/3.0)

Copyright (c) 2014 Piotr Mankowski. See [LICENSE](https://github.com/pmanko/pi/blob/master/LICENSE) for further details.