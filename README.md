# AppAttributes

A very simple polymorphic implementation of name-value pairs for any ActiveRecord model. The value is serialized to allow storage of ruby objects.

# Install

<pre>
sudo gem install app_attributes
</pre>

OR

<pre>
gem 'app_attributes'
bundle install
</pre>

# Usage

in your model:

<pre>
class Author &lt; ActiveRecord::Base
  include AppAttributes

  ext_attribute :hat_size
  # provides @author.hat_size, @author.hat_size=, @author.hat_size?
end
</pre>

# TODO

* automate migration. currently, you must manually copy/rename migration file in db/migrate
* finish tests
* specify dependencies

# Copyright and license

Copyright (c) 2011 Luke Wendling, released under the New BSD License

Contributors:

*   Jeff Pihl
*   Scott Robertson
*   Mike Hansen
