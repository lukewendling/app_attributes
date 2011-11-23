# AppAttributes

A very simple polymorphic implementation of name-value pairs for any ActiveRecord model. The value is serialized to allow storage of ruby objects.

## Install

    sudo gem install app_attributes

OR

    gem 'app_attributes'
    bundle install

## Usage

in your model:

    class Author &lt; ActiveRecord::Base
      include AppAttributes

      ext_attribute :hat_size, 10, :to_i
      # args: attribute name, default value, casting method for returned value
      # provides @author.hat_size, @author.hat_size=, @author.hat_size?
      # returns value cast as integer
    end

## TODO

* automate db migration. currently, you must manually copy/rename migration file in app_attributes/db/migrate
* build out tests likely as a nested Rails app

## Copyright and license

Copyright (c) 2011 Luke Wendling, released under the New BSD License

### Contributors:

*   Jeff Pihl
*   Scott Robertson
*   Mike Hansen
