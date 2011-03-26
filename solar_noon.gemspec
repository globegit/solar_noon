# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "solar_noon/version"

Gem::Specification.new do |s|
  s.name        = "Solar Noon Calculator"
  s.version     = SolarNoon::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jason Roth"]
  s.email       = ["jroth@globe.gov"]
  s.homepage    = "http://github.com/jasonmichaelroth/solar_noon"
  s.summary     = %q{A solar noon calculator extending the Time and DateTime classes.}
  s.description = %q{
    This gem extends Time and DateTime with solar noon calculation functions.
    It is based on the NOAA solar noon calculator:
      http://www.esrl.noaa.gov/gmd/grad/solcalc
  }

  s.rubyforge_project = nil

  s.add_development_dependency 'rspec', '>= 2.5.0'
  s.add_development_dependency 'timecop', '~> 0.3.5'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
