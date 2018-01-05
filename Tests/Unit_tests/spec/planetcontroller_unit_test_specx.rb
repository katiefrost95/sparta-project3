require 'spec_helper'
require_relative '../../../models/planet.rb'

describe 'PlanetController' do

  def app
    PlanetController.new
    # Sinatra::Application
  end

  before(:each) do
    @planet = PlanetController.new
  end

  it 'should load the homepage' do
    get "/planets"
    expect(last_response.status).to eq 200
  end

end
