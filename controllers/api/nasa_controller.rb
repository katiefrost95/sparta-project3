require 'HTTParty'
require 'Json'
require "sinatra"
class NasaController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "../..")
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    url = "https://api.nasa.gov/neo/rest/v1/feed/today?detailed=true&api_key=ugQnkeEDMfjgnRfrAdG3qY2tcQwcFz49eiHIcsiC"
    response = HTTParty.get(url)
    @keys = response.parsed_response
    d = DateTime.now()
    @today = d.strftime("%F")
    @rand = @keys['near_earth_objects'][@today.to_s]
    @feed = @rand[rand(@rand.length)]
    erb :'nasa/index'
  end

  def get_id
    if params[:id] == nil
      @id = ('2153306')
    else
      @id = params[:id]
    end
  end

  get "/lookup" do
    @id = get_id
    url = "https://api.nasa.gov/neo/rest/v1/neo/#{@id}?api_key=ugQnkeEDMfjgnRfrAdG3qY2tcQwcFz49eiHIcsiC"
    response = HTTParty.get(url)
    @keys = response.parsed_response
    @rand = @keys['close_approach_data']
    @feed = @rand[rand(@rand.length)]
    erb :'nasa/lookup'
  end

  get "/browse" do
    url = "https://api.nasa.gov/neo/rest/v1/neo/browse?api_key=ugQnkeEDMfjgnRfrAdG3qY2tcQwcFz49eiHIcsiC"
    response = HTTParty.get(url)
    @keys = response.parsed_response
    @rand= @keys['near_earth_objects']
    @feed = @rand[rand(@rand.length)]
    erb :'nasa/browse'
  end

end
