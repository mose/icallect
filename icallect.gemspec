# -*- encoding: utf-8 -*-
require File.expand_path('../lib/icallect/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["mose"]
  gem.email         = ["mose@mose.com"]
  gem.description   = 'Collector and aggregator daemon of ical feeds.'
  gem.summary       = 'Collector and aggregator daemon of ical feeds.'
  gem.homepage      = "https://github.com/mose/icallect"

  gem.files         = `git ls-files`.split($\)
  #gem.executables   = ['icallect']
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.name          = "icallect"
  gem.require_paths = ["lib"]
  gem.version       = Icallect::VERSION

  gem.add_dependency 'rake'
  gem.add_dependency "ri_cal"
  gem.add_dependency "daemons"

end
