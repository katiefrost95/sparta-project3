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
    @feed = @keys['near_earth_objects']['2017-12-31'][0]
    erb :'nasa/index'
  end



end
