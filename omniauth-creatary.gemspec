# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-creatary/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "omniauth-creatary"
  gem.version       = OmniAuth::Creatary::VERSION
  gem.authors       = ["Konrad Garlikowski"]
  gem.email         = ["developers@creatary.com"]
  gem.description   = %q{OmniAuth strategy for Creatary}
  gem.summary       = %q{OmniAuth strategy for Creatary}
  gem.homepage      = "https://github.com/creatary/omniauth-creatary"
  
  gem.rubyforge_project = "omniauth-creatary"

  gem.files         = `git ls-files`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]
  
  gem.add_runtime_dependency 'omniauth-oauth2',    '~> 1.0'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'rspec',     '~> 2.7'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'

  gem.post_install_message =<<eos
********************************************************************************

  Visit our community pages for up-to-date information on 
  Creatary:
      https://creatary.com/
  Notice that in order to use this gem you will also need to register as a 
  developer in Creatary

********************************************************************************  
eos
end
