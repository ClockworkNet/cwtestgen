# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cwtestgen/version"

Gem::Specification.new do |s|
  s.name        = "cwtestgen"
  s.version     = CwTestGen::VERSION
  s.authors     = ["Jeffrey S. Morgan", "Chris Smalley", "Andrew Leaf"]
  s.email       = ["chris@clockwork.net", "andrew@clockwork.net"]
  s.homepage    = "https://github.com/ClockworkNet/cwtestgen"
  s.summary     = %q{Generators for Clockwork testers using Cucumber}
  s.description = %q{Generates the Clockwork specific Cucumber testing environment}
  s.license     = 'MIT'

  s.rubyforge_project = "cwtestgen"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'thor', '>=0.17.0'
  s.add_dependency 'cucumber', '>=1.2.0'
  s.add_dependency 'rspec', '>=2.13.0'
  s.add_dependency 'require_all'
  s.add_dependency 'page-object'
  s.add_dependency 'watir-webdriver'
  s.add_dependency 'watir-webdriver-performance'

  s.add_development_dependency 'aruba'
end