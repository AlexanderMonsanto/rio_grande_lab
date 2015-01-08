require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    @cd = Cd.new("glitter", 9.99, 2)
  end

  describe "Initialization" do
    it "is an instance of a Cd" do
      expect(@cd).to be_instance_of(Cd)
    end

    it "is assigned a name" do
      expect(@cd.name).to eq("glitter")
    end
    it "is assigned a price" do
      expect(@cd.price).to eq(9.99)
    end
    it "is assigned a weight" do
      expect(@cd.weight).to eq(2)
    end
  end

  describe "Inheritance" do
    it "is inherited from Item" do
      expect(Cd < Item).to eq true
    end
  end

  describe "Accessors" do
    it "should be able to get and set tracks" do
      expect(@cd.tracks).to eq 10
      @cd.tracks=12
      expect(@cd.tracks).to eq(12)
    end
    it "should be able to get and set artist" do
      expect(@cd.artist).to eq "Mariah"
      @cd.artist="Snoop"
      expect(@cd.artist).to eq("Snoop")
    end
    it "should be able to get and set run_time" do
      expect(@cd.run_time).to eq 2.30
      @cd.run_time=56
      expect(@cd.run_time).to eq(56)
    end
  end

end
