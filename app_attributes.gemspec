# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "app_attributes/version"

Gem::Specification.new do |s|
  s.name        = "app_attributes"
  s.version     = AppAttributes::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Luke Wendling"]
  s.email       = ["noreply@example.com"]
  s.homepage    = %q{http://github.com/lukewendling/app_attributes}
  s.summary     = %q{Add simple name-value pairs to any ActiveRecord model}
  s.description = %q{Add simple name-value pairs to any ActiveRecord model and provide seamless getters, setters, and interrogators.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency(%q<activerecord>, [">= 2.0.0", "< 3.0.0"])
  s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 2.11.0"])
end
