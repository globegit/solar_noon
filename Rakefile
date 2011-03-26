require 'bundler'
require 'rspec/core/rake_task'

Bundler::GemHelper.install_tasks

RSpec::Core::RakeTask.new :spec

task :default => :spec

desc "Open a console with the development environment"
task :console do
  exec "irb -I lib -r rubygems -r solar_noon"
end
