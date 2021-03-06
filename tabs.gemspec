# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tabs/version'

Gem::Specification.new do |gem|

  gem.name          = "tabs"
  gem.version       = Tabs::VERSION
  gem.authors       = ["JC Grubbs"]
  gem.email         = ["jc.grubbs@devmynd.com"]
  gem.description   = %q{A redis-backed metrics tracker for keeping tabs on pretty much anything ;)}
  gem.summary       = %q{A redis-backed metrics tracker for keeping tabs on pretty much anything ;)}
  gem.homepage      = "https://github.com/thegrubbsian/tabs"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.post_install_message = <<TXT
**** NOTICE ****
Please note there are breaking changes in this version of tabs!
Existing data cannot be read because of changes to the redis key patterns.
Please continue to use version 0.5.6 if you need to access existing metric data."
TXT

  gem.add_dependency "activesupport", ">= 3.2.12"
  gem.add_dependency "json", "~> 1.7.7"
  gem.add_dependency "redis", "~> 3.0.2"

  gem.add_development_dependency "fakeredis"
  gem.add_development_dependency "pry"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "timecop"

end
