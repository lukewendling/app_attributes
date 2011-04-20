# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "app_attributes/version"

Gem::Specification.new do |s|
  s.name        = "app_attributes"
  s.version     = AppAttributes::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Luke Wendling"]
  s.email       = ["noreply@example.com"]
  s.homepage    = ""
  s.summary     = %q{Add simple name-value pairs to any ActiveRecord model}
  s.description = %q{Add simple name-value pairs to any ActiveRecord model}

  s.rubyforge_project = "app_attributes"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
