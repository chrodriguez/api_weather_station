require 'bundler'

Bundler.require :default, :development

require './lib/model/weather_data'
require './lib/feed/file'
require 'sinatra/activerecord/rake'

environment = ENV['RAKE_ENV'] || 'development'
path = 'config/database.yml'
database_hash = YAML.load(ERB.new(File.read(path)).result) || {}
database_hash = database_hash[environment.to_s] if database_hash[environment.to_s]
ActiveRecord::Base.establish_connection database_hash

namespace :weather do
  namespace :feed do

    desc "Import data from file" 
    task :file, :file do |t,args|
      WeatherDataFeed::File[args.file]
    end

  end
end

desc "Run application" 
task :run do
  sh "rerun -- rackup config.ru"
end

task default: 'run'
