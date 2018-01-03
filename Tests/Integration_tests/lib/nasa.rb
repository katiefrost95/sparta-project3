require_relative 'services/neo_feed_service.rb'
require_relative 'services/neo_lookup_service.rb'
require_relative 'services/neo_browse_service.rb'

class Nasa

  def nasa_neo_feed
    NeoFeed.new
  end

  def nasa_neo_lookup
    NeoLookup.new
  end

  def nasa_neo_browse
    NeoBrowse.new
  end

end
