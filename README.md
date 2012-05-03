# SimpleLogin

simple_login creates a basic and simple login system for Rails 3 apps. It is based on Railscasts Authentication from Scratch videos.

## Installation

Add this line to your application's Gemfile:

    gem 'simple_login'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_login

## Usage

Once you've added the gem into your Gemfile, you only need to run the following command:

rails g simple_login

Rails will generate the login and view files.

Then run:

rake db:migrate

The user table will be created.

I also recommend activating the root_path.

To add the links to your app just add the following paths:

signup_path
login_path
logout_path
password_reset_path

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
