require 'httparty'
require 'json'

class NeoLookup
  include HTTParty

  attr_accessor :neo_lookup_data

  base_uri 'https://api.nasa.gov/neo/rest/v1/neo'

  def get_neo_lookup_data(id)
    @neo_lookup_data = JSON.parse(self.class.get("/#{id}?api_key=ugQnkeEDMfjgnRfrAdG3qY2tcQwcFz49eiHIcsiC").body)
  end

  def get_links
    @neo_lookup_data['links']
  end

  def get_self_link
    get_links['self']
  end

  def get_id
    @neo_lookup_data['neo_reference_id']
  end

  def get_name
    @neo_lookup_data['name']
  end

  def get_url
    @neo_lookup_data['nasa_jpl_url']
  end

  def get_ab_mag
    @neo_lookup_data['absolute_magnitude_h']
  end

  def get_estimated_diameter
    @neo_lookup_data['estimated_diameter']
  end

  def get_diameter_km
    get_estimated_diameter['kilometers']
  end

  def get_km_min
    get_diameter_km['estimated_diameter_min']
  end

  def get_km_max
    get_diameter_km['estimated_diameter_max']
  end

  def get_diameter_m
    get_estimated_diameter['meters']
  end

  def get_m_min
    get_diameter_m['estimated_diameter_min']
  end

  def get_m_max
    get_diameter_m['estimated_diameter_max']
  end

  def get_diameter_miles
    get_estimated_diameter['miles']
  end

  def get_miles_min
    get_diameter_miles['estimated_diameter_min']
  end

  def get_miles_max
    get_diameter_miles['estimated_diameter_max']
  end

  def get_diameter_feet
    get_estimated_diameter['feet']
  end

  def get_feet_min
    get_diameter_feet['estimated_diameter_min']
  end

  def get_feet_max
    get_diameter_feet['estimated_diameter_max']
  end

  def get_hazardous
    @neo_lookup_data['is_potentially_hazardous_asteroid']
  end

  def get_close_approach_data
    @neo_lookup_data['close_approach_data']
  end

  def get_close_approach_date
    close_date = []
    get_close_approach_data.each{|x| close_date << x['close_approach_date']}
    close_date
  end

  def get_epoch_approach_date
    epoch_date = []
    get_close_approach_data.each{|x| epoch_date << x['epoch_date_close_approach']}
    epoch_date
  end

  def get_relative_vel
    velocity = []
    get_close_approach_data.each{|x| velocity << x['relative_velocity']}
    velocity
  end

  def get_vel_kms
    kmps = []
    get_relative_vel.each{|x| kmps << x['kilometers_per_second']}
    kmps
  end

  def get_vel_kmh
    kmph = []
    get_relative_vel.each{|x| kmph << x['kilometers_per_hour']}
    kmph
  end

  def get_vel_mph
    mph = []
    get_relative_vel.each{|x| mph << x['miles_per_hour']}
    mph
  end

  def get_miss_distance
    miss_distance = []
    get_close_approach_data.each{|x| miss_distance << x['miss_distance']}
    miss_distance
  end

  def get_miss_distance_astronomical
    mda = []
    get_miss_distance.each{|x| mda << x['astronomical']}
    mda
  end

  def get_miss_distance_lunar
    lunar = []
    get_miss_distance.each{|x| lunar << x['lunar']}
    lunar
  end

  def get_miss_distance_km
    km = []
    get_miss_distance.each{|x| km << x['kilometers']}
    km
  end

  def get_miss_distance_miles
    miles = []
    get_miss_distance.each{|x| miles << x['miles']}
    miles
  end

  def get_orbiting_body
    orbiting_body = []
    get_close_approach_data.each{|x| orbiting_body << x['orbiting_body']}
    orbiting_body
  end

end

x = NeoLookup.new
x.get_neo_lookup_data('3542519')
# puts x.get_orbiting_body
