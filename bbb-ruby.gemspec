# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bbb-ruby/version"

Gem::Specification.new do |s|
  s.name        = "bbb-ruby"
  s.version     = Bbb::Ruby::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Original: Joe Kinsella, Git Version: Maximilian Mack"]
  s.email       = ["maximilian.mack@dozeo.com"]
  s.homepage    = "http://www.dozeo.com"
  s.summary     = %q{ruby gem for the BigBlueButton API}
  s.description = %q{TODO: 
    Original code and author: http://code.google.com/p/bigbluebuttongem/ by Joe Kinsella.
    Changes by Maximilian Mack, dozeo Webinar Hosting GmbH.
  }
  s.test_files        = Dir["spec/**/*.rb"]
  s.add_development_dependency 'rspec'

  s.rubyforge_project = "bbb-ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
