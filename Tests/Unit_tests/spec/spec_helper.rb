ENV['RACK_ENV'] = 'test'
require 'rspec'
require_relative '../../../controllers/api/nasa_controller'
require_relative '../../../controllers/planet_controller'
require 'rack/test'
#
RSpec.configure do|config|
  config.color = true
  config.formatter = :documentation
  config.include Rack::Test::Methods
end
