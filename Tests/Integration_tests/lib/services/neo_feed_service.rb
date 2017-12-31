require 'httparty'
require 'json'

class NeoFeed
  include HTTParty

  attr_accessor :neo_feed_data

  base_uri 'https://api.nasa.gov/neo/rest/v1/feed'

  def get_neo_feed_data
    @neo_feed_data = JSON.parse(self.class.get("/today?detailed=true&api_key=ugQnkeEDMfjgnRfrAdG3qY2tcQwcFz49eiHIcsiC").body)
  end

  def get_links
    @neo_feed_data['links']
  end

  def get_next_link
    get_links['next']
  end

  def get_prev_link
    get_links['prev']
  end

  def get_self_link
    get_links['self']
  end


end

x = NeoFeed.new
x.get_neo_feed_data
# puts x.get_next_link
