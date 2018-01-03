require 'sinatra'
require "sinatra/reloader" if development?
require 'pg'
require 'http'
require 'httparty'
require 'json'
require 'rest-client'
require_relative './controllers/planet_controller.rb'
require_relative './controllers/api/nasa_controller.rb'
require_relative './models/planet.rb'

use Rack::MethodOverride

run Rack::Cascade.new([
  PlanetController,
  NasaController
])
