# -*- encoding: utf-8 -*-
require File.expand_path('../lib/simple_login/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chim Kan"]
  gem.email         = ["designium@gmail.com"]
  gem.description   = "simple-login creates a basic and simple login system for Rails 3 apps. It is based on Railscasts Authentication from Scratch videos. Usage: create your rails app, then add this gem to your Gemfile. Finally, just type 'rails g simple_login'. All these routes are available: signup_path, login_path, logout_path, password_reset_path. Also, these methods are available: authorize and current_user. More info on github page."
  gem.summary       = "simple-login can be used easily by adding the gem into your Gemfile and type the following command 'rails g simple_login'."
  gem.homepage      = "https://github.com/designium/simple-login"
  gem.email         = 'designium+simple@gmail.com'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "simple-login"
  gem.require_paths = ["lib"]
  gem.version       = SimpleLogin::VERSION

  gem.files         = Dir["{lib}/**/*", "[A-Z]*"]

  gem.post_install_message = "***************************************\n     Thanks for using simple-login    \n                                       \nAny problem? Suggestion? Send an email:\n  email: designium+simple@gmail.com    \n***************************************\n"

end
