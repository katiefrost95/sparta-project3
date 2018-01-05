require 'spec_helper'

describe 'NasaController' do

  def app
    NasaController.new
  end

  before(:each) do
    @nasa = NasaController.new
  end

  it 'should load the asteroid feed page and display the data' do
    get "/"
    expect(last_response.status).to eq 200
    expect(last_response.body).to include("Name")
  end

  it 'should load the asteroid lookup page and show correct data' do
    get "/lookup"
    expect(last_response.status).to eq 200
    expect(last_response.body).to include("Name")
  end

  it 'the id should match id in search bar for asteroid lookup' do
    get "/lookup", :id => "3709081"
    expect(last_response.body).to include("3709081")
  end

  it 'should load the asteroid browse page and display the data' do
    get "/browse"
    expect(last_response.status).to eq 200
    expect(last_response.body).to include("Name")
  end

end
