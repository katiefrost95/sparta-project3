require 'spec_helper'
require_relative '../../../models/planet.rb'
require 'pg'

describe 'PlanetController' do

  def app
    PlanetController.new
  end

  before(:each) do
    @planet = PlanetController.new
  end

  it 'should load the planets homepage' do
    get "/planets"
    expect(last_response.status).to eq 200
  end

  it 'shoudl display the planets homepage data' do
    get "/planets"
    expect(last_response.body).to include("Jupiter")
  end

  it 'should load new planets page' do
    get "/planets/new"
    expect(last_response.status).to eq 200
  end

  it 'should display new planets page data' do
    get "/planets/new"
    expect(last_response.body).to include("Upload new posts here!")
  end

  it 'should load show planets page and show correct data' do
    get "/planets/2"
    expect(last_response.status).to eq 200
  end

  it 'should show correct data for show planets page' do
    get "/planets/2"
    expect(last_response.body).to include("Moons: Venus has no moons")
  end

  it 'should show planets edit page' do
    get "/planets/2/edit"
    expect(last_response.status).to eq 200
  end

  it 'should show edit planets page data' do
    get "/planets/2/edit"
    expect(last_response.body).to include("Edit your posts here!")
  end

  # it 'should redirect to correct page when editing post' do
  #   put "/planets/8"
  #   expect(last_response).to be_redirect
  #   follow_redirect!
  #   expect(last_request.location).to include('/planets')
  # end


end
