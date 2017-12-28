# spec/spec_helper.rb
require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../controllers/planet_controller.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

RSpec.configure do|config|
  config.color = true
  config.formatter = :documentation
end
