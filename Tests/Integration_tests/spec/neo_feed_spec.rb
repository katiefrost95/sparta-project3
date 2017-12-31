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

  end

end
