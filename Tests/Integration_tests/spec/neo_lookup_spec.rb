require 'spec_helper'

describe Nasa do

  context 'requesting information on a nasa lookup by id works correctly' do

    before(:all) do
      @nasa = Nasa.new.nasa_neo_lookup
      @nasa.get_neo_lookup_data('3542519')
    end

    it 'should return a hash for links' do
      expect(@nasa.get_links).to be_kind_of(Hash)
    end

    it 'should return a string for self links' do
      expect(@nasa.get_self_link).to be_kind_of(String)
    end

    it 'should return a string for neo reference id' do
      expect(@nasa.get_id).to be_kind_of(String)
    end

    it 'should return a string for name' do
      expect(@nasa.get_name).to be_kind_of(String)
    end

    it 'should return a string for url' do
      expect(@nasa.get_url).to be_kind_of(String)
    end

    it 'should return a float for absolute magnitude' do
      expect(@nasa.get_ab_mag).to be_kind_of(Float)
    end

    it 'should return a hash for estimated diameter' do
      expect(@nasa.get_estimated_diameter).to be_kind_of(Hash)
    end

    it 'should return a hash for estimated diameter kilometers' do
      expect(@nasa.get_diameter_km).to be_kind_of(Hash)
    end

    it 'should return a float for km min' do
      expect(@nasa.get_km_min).to be_kind_of(Float)
    end

    it 'should return a float for km max' do
      expect(@nasa.get_km_max).to be_kind_of(Float)
    end

    it 'should return a hash for estimated diameter meters' do
      expect(@nasa.get_diameter_m).to be_kind_of(Hash)
    end

    it 'should return a float for m min' do
      expect(@nasa.get_m_min).to be_kind_of(Float)
    end

    it 'should return a float for m max' do
      expect(@nasa.get_m_max).to be_kind_of(Float)
    end

    it 'should return a hash for estimated diameter miles' do
      expect(@nasa.get_diameter_miles).to be_kind_of(Hash)
    end

    it 'should return a float for miles min' do
      expect(@nasa.get_miles_min).to be_kind_of(Float)
    end

    it 'should return a float for miles max' do
      expect(@nasa.get_miles_max).to be_kind_of(Float)
    end

    it 'should return a hash for estimated diameter feet' do
      expect(@nasa.get_diameter_feet).to be_kind_of(Hash)
    end

    it 'should return a float for m min' do
      expect(@nasa.get_feet_min).to be_kind_of(Float)
    end

    it 'should return a float for m max' do
      expect(@nasa.get_feet_max).to be_kind_of(Float)
    end

    it 'should return boolean for potentially hazardous?' do
      expect(@nasa.get_hazardous).to be_truthy.or be_falsey
    end

    it 'should return an array for close approach data' do
      expect(@nasa.get_close_approach_data).to be_kind_of(Array)
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

  end

end
