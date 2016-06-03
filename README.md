# Morralla Virtual

## Install

You require to install [rvm](https://rvm.io/) and then create database.yml

    cp config/database.sample.yml config/database.yml
  
Then you need to install the gems

    bundle install

Last, you can run the server with

    rails server

The console with

    rails console

and the tests with

    guard

With [guard](http://guardgem.org/) you can run tests when you save the test files
