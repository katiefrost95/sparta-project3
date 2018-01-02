require 'HTTParty'
require 'Json'
class NasaController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")
  set :views, Proc.new { File.join(root, "views2") }

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

  get "/lookup" do
    @id = ('3542519')
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
