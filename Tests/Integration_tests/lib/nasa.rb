require_relative 'services/neo_feed_service.rb'

class Nasa

  def nasa_neo_feed
    NeoFeed.new
  end


end
