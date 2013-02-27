# Capistrano::Switchuser

This gem adds a function that allows you to switch the user capistrano uses when running ssh commands at runtime. 

[Based on a blog post by Paul Gross](http://www.pgrs.net/2008/08/06/switching-users-during-a-capistrano-deploy/)

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-switchuser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-switchuser

## Usage

Add the following line to your deploy.rb file:

    require 'capistrano/switchuser'

You can then call the switchuser function to switch the user for all subsequent commands:

    run('whoami') # will output original value of user e.g. 'deployer'
    switchuser(:ubuntu)
    run('whoami') # will output 'ubuntu'
    
You can also switch the user for a subset of commands by passing a block:

    switchuser(:ubuntu) do
      run('whoami') # will output 'ubuntu'
    end
    run('whoami') # will output original value of user e.g. 'deployer'

**You must have ssh privileges for any user you set!**


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
