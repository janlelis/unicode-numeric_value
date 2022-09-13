# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/unicode/numeric_value/constants"

Gem::Specification.new do |gem|
  gem.name          = "unicode-numeric_value"
  gem.version       = Unicode::NumericValue::VERSION
  gem.summary       = "Returns the numeric value associated with a Unicode character"
  gem.description   = "[Unicode #{Unicode::NumericValue::UNICODE_VERSION}] Returns the numeric value associated with a Unicode character"
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["hi@ruby.consulting"]
  gem.homepage      = "https://github.com/janlelis/unicode-numeric_value"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.metadata      = { "rubygems_mfa_required" => "true" }

  gem.required_ruby_version = ">= 2.0"
end
