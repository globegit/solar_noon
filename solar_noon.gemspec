# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "solar_noon/version"

Gem::Specification.new do |s|
  s.name        = "solar_noon"
  s.version     = SolarNoon::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jason Roth"]
  s.email       = ["jroth@globe.gov"]
  s.homepage    = "http://github.com/jasonmichaelroth/solar_noon"
  s.summary     = "A solar noon calculator."
  s.description = %q{
    This gem extends Date, Time and DateTime with solar noon calculation
    functions. It is based on the NOAA solar noon calculator:
      http://www.esrl.noaa.gov/gmd/grad/solcalc
  }

  s.rubyforge_project = nil

  s.add_development_dependency 'rspec', '>= 2.5.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
end
