require 'bundler'

Bundler.require :default, ENV['RACK_ENV'].to_sym

require './lib/model/weather_data'
require './app/api'

run Api
