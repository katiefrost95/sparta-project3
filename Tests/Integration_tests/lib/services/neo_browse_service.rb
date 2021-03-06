require 'httparty'
require 'json'

class NeoBrowse
  include HTTParty

  attr_accessor :neo_browse_data

  base_uri 'https://api.nasa.gov/neo/rest/v1/neo/browse'

  def get_neo_browse_data
    @neo_browse_data = JSON.parse(self.class.get("?api_key=ugQnkeEDMfjgnRfrAdG3qY2tcQwcFz49eiHIcsiC").body)
  end

  def get_links
    @neo_browse_data['links']
  end

  def get_next_link
    get_links['next']
  end

  def get_self_link
    get_links['self']
  end

  def get_page
    @neo_browse_data['page']
  end

  def get_page_size
    get_page['size']
  end

  def get_page_elements
    get_page['total_elements']
  end

  def get_page_total
    get_page['total_pages']
  end

  def get_page_number
    get_page['number']
  end

  def get_near_earth_objects
    @neo_browse_data['near_earth_objects']
  end

  def get_today_links
    links = []
    get_near_earth_objects.each{|x|links << x["links"]}
    links
  end

  def get_links_self
    self_links = []
    get_today_links.each{|x|self_links << x['self']}
    self_links
  end

  def get_id
    id = []
    get_near_earth_objects.each{|x|id << x['neo_reference_id']}
    id
  end

  def get_name
    name = []
    get_near_earth_objects.each{|x|name << x ['name']}
    name
  end

  def get_url
    url = []
    get_near_earth_objects.each{|x|url << x ['nasa_jpl_url']}
    url
  end

  def get_ab_mag
    ab_mag = []
    get_near_earth_objects.each{|x|ab_mag << x ['absolute_magnitude_h']}
    ab_mag
  end

  def get_estimated_diameter
    estimated_diameter = []
    get_near_earth_objects.each{|x|estimated_diameter << x ['estimated_diameter']}
    estimated_diameter
  end

  def get_diameter_km
    dkm = []
    get_estimated_diameter.each{|x| dkm << x['kilometers']}
    dkm
  end

  def get_km_min
    km_min = []
    get_diameter_km.each{|x| km_min << x['estimated_diameter_min']}
    km_min
  end

  def get_km_max
    km_max = []
    get_diameter_km.each{|x| km_max << x['estimated_diameter_max']}
    km_max
  end

  def get_diameter_m
    dm = []
    get_estimated_diameter.each{|x| dm << x['meters']}
    dm
  end

  def get_m_min
    m_min = []
    get_diameter_m.each{|x| m_min << x['estimated_diameter_min']}
    m_min
  end

  def get_m_max
    m_max = []
    get_diameter_m.each{|x| m_max << x['estimated_diameter_max']}
    m_max
  end

  def get_diameter_miles
    dm = []
    get_estimated_diameter.each{|x| dm << x['miles']}
    dm
  end

  def get_miles_min
    m_min = []
    get_diameter_miles.each{|x| m_min << x['estimated_diameter_min']}
    m_min
  end

  def get_miles_max
    m_max = []
    get_diameter_miles.each{|x| m_max << x['estimated_diameter_max']}
    m_max
  end

  def get_diameter_feet
    dmfeet = []
    get_estimated_diameter.each{|x| dmfeet << x['feet']}
    dmfeet
  end

  def get_feet_min
    m_min = []
    get_diameter_feet.each{|x| m_min << x['estimated_diameter_min']}
    m_min
  end

  def get_feet_max
    m_max = []
    get_diameter_feet.each{|x| m_max << x['estimated_diameter_max']}
    m_max
  end

  def get_hazardous
    h = []
    get_near_earth_objects.each{|x| h << x['is_potentially_hazardous_asteroid']}
    h
  end

  def get_close_approach_data
    close_data = []
    get_near_earth_objects.each{|x| close_data << x['close_approach_data'][0]}
    close_data
  end

  def get_close_approach_date
    close_date = []
    get_close_approach_data.each do |x|
      if x
        close_date.push(x['close_approach_date'])
      end
    end
    close_date
  end

  def get_epoch_approach_date
    epoch_date = []
    get_close_approach_data.each do |x|
      if x
        epoch_date.push(x['epoch_date_close_approach'])
      end
    end
    epoch_date
  end

  def get_relative_vel
    velocity = []
    get_close_approach_data.each do |x|
      if x
        velocity.push(x['relative_velocity'])
      end
    end
    velocity
  end

  def get_vel_kms
    kmps = []
    get_relative_vel.each do |x|
      if x
        kmps << x['kilometers_per_second']
      end
    end
    kmps
  end

  def get_vel_kmh
    kmph = []
    get_relative_vel.each do |x|
      if x
        kmph << x['kilometers_per_hour']
      end
    end
    kmph
  end

  def get_vel_mph
    mph = []
    get_relative_vel.each do |x|
      if x
        mph << x['miles_per_hour']
      end
    end
    mph
  end

  def get_miss_distance
    miss_distance = []
    get_close_approach_data.each do |x|
      if x
        miss_distance << x['miss_distance']
      end
    end
    miss_distance
  end

  def get_miss_distance_astronomical
    mda = []
    get_miss_distance.each do |x|
      if x
        mda << x['astronomical']
      end
    end
    mda
  end

  def get_miss_distance_lunar
    lunar = []
    get_miss_distance.each do |x|
      if x
        lunar << x['lunar']
      end
    end
    lunar
  end

  def get_miss_distance_km
    km = []
    get_miss_distance.each do |x|
      if x
        km << x['kilometers']
      end
    end
    km
  end

  def get_miss_distance_miles
    miles = []
    get_miss_distance.each do |x|
      if x
        miles << x['miles']
      end
    end
    miles
  end

  def get_orbiting_body
    orbiting_body = []
    get_close_approach_data.each do |x|
      if x
        orbiting_body << x['orbiting_body']
      end
    end
    orbiting_body
  end

  def get_orbital_data
    orbital_data = []
    get_near_earth_objects.each{|x| orbital_data << x['orbital_data']}
    orbital_data
  end

  def orbit_id
    orbit_id = []
    get_orbital_data.each{|x| orbit_id << x['orbit_id']}
    orbit_id
  end

  def orbit_determination_date
    orbit_determination_date = []
    get_orbital_data.each{|x| orbit_determination_date << x['orbit_determination_date']}
    orbit_determination_date
  end

  def orbit_uncertainty
    orbit_uncertainty = []
    get_orbital_data.each{|x| orbit_uncertainty << x['orbit_uncertainty']}
    orbit_uncertainty
  end

  def minimum_orbit_intersection
    minimum_orbit_intersection = []
    get_orbital_data.each{|x| minimum_orbit_intersection << x['minimum_orbit_intersection']}
    minimum_orbit_intersection
  end

  def jupiter_tisserand_invariant
    jupiter_tisserand_invariant = []
    get_orbital_data.each{|x| jupiter_tisserand_invariant << x['jupiter_tisserand_invariant']}
    jupiter_tisserand_invariant
  end

  def epoch_osculation
    epoch_osculation = []
    get_orbital_data.each{|x| epoch_osculation << x['epoch_osculation']}
    epoch_osculation
  end

  def eccentricity
    eccentricity = []
    get_orbital_data.each{|x| eccentricity << x['eccentricity']}
    eccentricity
  end

  def semi_major_axis
    semi_major_axis = []
    get_orbital_data.each{|x| semi_major_axis << x['semi_major_axis']}
    semi_major_axis
  end

  def inclination
    inclination = []
    get_orbital_data.each{|x| inclination << x['inclination']}
    inclination
  end

  def ascending_node_longitude
    ascending_node_longitude = []
    get_orbital_data.each{|x| ascending_node_longitude << x['ascending_node_longitude']}
    ascending_node_longitude
  end

  def orbital_period
    orbital_period = []
    get_orbital_data.each{|x| orbital_period << x['orbital_period']}
    orbital_period
  end

  def perihelion_distance
    perihelion_distance = []
    get_orbital_data.each{|x| perihelion_distance << x['perihelion_distance']}
    perihelion_distance
  end

  def perihelion_argument
    perihelion_argument = []
    get_orbital_data.each{|x| perihelion_argument << x['perihelion_argument']}
    perihelion_argument
  end

  def aphelion_distance
    aphelion_distance = []
    get_orbital_data.each{|x| aphelion_distance << x['aphelion_distance']}
    aphelion_distance
  end

  def perihelion_time
    perihelion_time = []
    get_orbital_data.each{|x| perihelion_time << x['perihelion_time']}
    perihelion_time
  end

  def mean_anomaly
    mean_anomaly = []
    get_orbital_data.each{|x| mean_anomaly << x['mean_anomaly']}
    mean_anomaly
  end

  def mean_motion
    mean_motion = []
    get_orbital_data.each{|x| mean_motion << x['mean_motion']}
    mean_motion
  end

  def equinox
    equinox = []
    get_orbital_data.each{|x| equinox << x['equinox']}
    equinox
  end


end

x = NeoBrowse.new
x.get_neo_browse_data
# puts x.get_close_approach_data
