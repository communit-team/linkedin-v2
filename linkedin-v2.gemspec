# encoding: utf-8
# Follow http://guides.rubygems.org/ best practices

require File.expand_path("../lib/linked_in/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "linkedin-v2"
  gem.email       = ["mike.desjardins@cereslogic.com"]
  gem.version     = LinkedIn::VERSION
  gem.authors     = ["Mike Desjardins"]
  gem.summary     = "Ruby wrapper for the LinkedIn v2 API"
  gem.license     = "MIT"
  gem.homepage    = "http://github.com/mdesjardins/linkedin-v2"
  gem.description = gem.summary

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- spec/**/*`.split("\n")
  gem.require_paths = ["lib"]

  # To support native JSON. Same requirements as Rails.
  gem.required_ruby_version = '>= 1.9.3'

  gem.add_dependency "oauth2",  "~> 1.0"
  gem.add_dependency "hashie",  "~> 3.2"
  gem.add_dependency "faraday", "~> 0.8.8"
  gem.add_dependency 'mime-types', '>= 1.16'

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", "~> 3.0"

  # We use YARD for documentation
  # Extra gems for GitHub flavored MarkDown in YARD
  #gem.add_development_dependency "yard"
  #gem.add_development_dependency "redcarpet"
  #gem.add_development_dependency "github-markdown"

  # We use VCR to mock LinkedIn API calls
  gem.add_development_dependency "vcr"
  gem.add_development_dependency "webmock"
end
