require 'spec_helper'
# require 'planet_controller'

describe PlanetController do
  include Rack::Test::Methods

  # def app
    # Sinatra::Application
  # end

  before(:each) do
    @planet = PlanetController.new
  end

end
