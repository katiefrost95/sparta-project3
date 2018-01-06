require 'spec_helper'

describe Nasa do

  context 'requesting information on a nasa feed works correctly' do

    before(:all) do
      @nasa = Nasa.new.nasa_neo_feed
      @nasa.get_neo_feed_data
    end

    it 'should return a hash for links' do
      expect(@nasa.get_links).to be_kind_of(Hash)
    end

    it 'should return a string for next links' do
      expect(@nasa.get_next_link).to be_kind_of(String)
    end

    it 'should return a string for prev links' do
      expect(@nasa.get_prev_link).to be_kind_of(String)
    end

    it 'should return a string for self links' do
      expect(@nasa.get_self_link).to be_kind_of(String)
    end

    it 'should should return an integer for element count' do
      expect(@nasa.get_element_count).to be_kind_of(Integer)
    end

    it 'should return a hash for near earth objects' do
      expect(@nasa.get_near_earth_objects).to be_kind_of(Hash)
    end

    it 'should return an array for todays date' do
      expect(@nasa.get_today_date).to be_kind_of(Array)
    end

    it 'should return a hash for today links' do
      @nasa.get_today_links.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

     it 'should return a string for today link self' do
       @nasa.get_links_self.each do |x|
         expect(x).to be_kind_of(String)
       end
     end

    it 'should return a string for neo reference id' do
      @nasa.get_id.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for name' do
      @nasa.get_name.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for url' do
      @nasa.get_url.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a float for absolute magnitude' do
      @nasa.get_ab_mag.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should return a hash for estimated diameter' do
      @nasa.get_estimated_diameter.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should return a hash for estimated diameter kilometers' do
      @nasa.get_diameter_km.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should return a float for km min' do
      @nasa.get_km_min.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should return a float for km max' do
      @nasa.get_km_max.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should return a hash for estimated diameter meters' do
      @nasa.get_diameter_m.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should return a float for m min' do
      @nasa.get_m_min.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should return a float for m max' do
      @nasa.get_m_max.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should return a hash for estimated diameter miles' do
      @nasa.get_diameter_miles.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should return a float for miles min' do
      @nasa.get_miles_min.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should return a float for miles max' do
      @nasa.get_miles_max.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should return a hash for estimated diameter feet' do
      @nasa.get_diameter_feet.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should return a float for m min' do
      @nasa.get_feet_min.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should return a float for m max' do
      @nasa.get_feet_max.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should return boolean for potentially hazardous?' do
      @nasa.get_hazardous.each do |x|
        expect(x).to be_truthy.or be_falsey
      end
    end

    it 'should return an array for close approach data' do
      @nasa.get_close_approach_data.each do |x|
        expect(x).to be_kind_of(Array)
      end
    end

    it 'should return a string for close approach date' do
      @nasa.get_close_approach_date.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a integer or float for close approach date' do
      @nasa.get_epoch_approach_date.each do |x|
        expect(x).to be_kind_of(Integer).or be_kind_of(Float)
      end
    end

    it 'should return a hash for relative velocity' do
      @nasa.get_relative_vel.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should return a string for km per second' do
      @nasa.get_vel_kms.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for km per hour' do
      @nasa.get_vel_kmh.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for miles per hour' do
      @nasa.get_vel_mph.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a hash for miss distance' do
      @nasa.get_miss_distance.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should return a string for astronimical' do
      @nasa.get_miss_distance_astronomical.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for lunar' do
      @nasa.get_miss_distance_lunar.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for km' do
      @nasa.get_miss_distance_km.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for miles' do
      @nasa.get_miss_distance_miles.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for orbiting body' do
      @nasa.get_orbiting_body.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a hash for orbital data' do
      @nasa.get_orbital_data.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should return a string for orbit id' do
      @nasa.orbit_id.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for orbit_determination_date' do
      @nasa.orbit_determination_date.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for orbit_uncertainty' do
      @nasa.orbit_uncertainty.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for minimum_orbit_intersection' do
      @nasa.minimum_orbit_intersection.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for jupiter_tisserand_invariant' do
      @nasa.jupiter_tisserand_invariant.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for epoch_osculation' do
      @nasa.epoch_osculation.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for eccentricity' do
      @nasa.eccentricity.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for inclination' do
      @nasa.inclination.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for ascending_node_longitude' do
      @nasa.ascending_node_longitude.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for orbital_period' do
      @nasa.orbital_period.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for perihelion_distance' do
      @nasa.perihelion_distance.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for perihelion_argument' do
      @nasa.perihelion_argument.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for aphelion_distance' do
      @nasa.aphelion_distance.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for perihelion_time' do
      @nasa.perihelion_time.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for mean_anomaly' do
      @nasa.mean_anomaly.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for mean_motion' do
      @nasa.mean_motion.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return a string for equinox' do
      @nasa.equinox.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

  end

end
