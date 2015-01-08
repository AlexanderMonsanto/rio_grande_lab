require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    @song = Song.new("", 9.99, 20)
  end

  describe "Initialization" do
    it "is an instance of a Song" do
      expect(@song).to be_instance_of(Song)
    end

    it "is assigned a name" do
      expect(@song.name).to eq("")
    end
    it "is assigned a price" do
      expect(@song.price).to eq(9.99)
    end
    it "is assigned a download_size" do
      expect(@song.download_size).to eq(20)
    end
  end

  describe "Inheritance" do
    it "is inherited from DigitalItem" do
      expect(Song < DigitalItem).to eq true
    end
  end

  describe "Accessors" do
    it "should be able to get and set artist" do
      expect(@song.artist).to eq ""
      @song.artist="Snoop"
      expect(@song.artist).to eq("Snoop")
    end
    it "should be able to get and set run_time" do
      expect(@song.run_time).to eq 0
      @song.run_time=56
      expect(@song.run_time).to eq(56)
    end
  end

end
