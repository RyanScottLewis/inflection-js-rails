# -*- encoding: utf-8 -*-
require File.expand_path('../lib/inflectionjs/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "inflection-js-rails"
  s.version     = Inflectionjs::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ryan Scott Lewis"]
  s.email       = ["c00lryguy@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/inflection-js-rails"
  s.summary     = "Use inflection-js with Rails 3"
  s.description = "This gem provides inflection-js assets for your Rails 3 application."

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "railties", ">= 3.2.0", "< 5.0"
  s.add_dependency "thor",     "~> 0.14"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = 'lib'
end
