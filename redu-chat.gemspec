# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "redu-chat/version"

Gem::Specification.new do |s|
  s.name        = "redu-chat"
  s.version     = Redu::Chat::VERSION
  s.authors     = ["Guilherme Cavalcanti"]
  s.email       = ["guiocavalcanti@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Single User Chat}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "redu-chat"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "guard-coffeescript"
  s.add_development_dependency "compass"
  s.add_development_dependency "jasmine"
  s.add_development_dependency "rails", "3.0.11"
  s.add_development_dependency "rb-fsevent"
end
