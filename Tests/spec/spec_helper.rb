ENV['RACK_ENV'] = 'test'
require 'rspec'
require_relative '../../controllers/planet_controller'
require 'rack/test'

RSpec.configure do|config|
  config.color = true
  config.formatter = :documentation
end
