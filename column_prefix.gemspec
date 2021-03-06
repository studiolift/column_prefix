# -*- encoding: utf-8 -*-
require File.expand_path('../lib/column_prefix/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mike Robinson"]
  gem.email         = ["mike@studiolift.com"]
  gem.description   = %q{Extends ActiveResource with column prefix option, handy for legacy databases}
  gem.summary       = %q{Extends ActiveResource with column prefix option}
  gem.homepage      = "http://github.com/studiolift/column_prefix"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "column_prefix"
  gem.require_paths = ["lib"]
  gem.version       = ColumnPrefix::VERSION

  gem.add_dependency('activerecord', '>= 3.2.7')

  gem.add_development_dependency('sqlite3')
end
