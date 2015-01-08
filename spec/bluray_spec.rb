require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    @ray = Bluray.new("Movie", 10.99)
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@ray).to be_instance_of(Bluray)
    end
    it "is assigned a name" do
      expect(@ray.name).to eq("Movie")
    end
    it "is assigned a price" do
      expect(@ray.price).to eq(10.99)
    end
    it "is assigned a weight" do
      expect(@ray.weight).to eq(0)
    end

  end

  describe "Inheritance" do
    it "is inherited from Item" do
      expect(Bluray < Item).to eq true
    end
  end

  describe "Accessors" do
    it "should be able to get and set run_time" do
      expect(@ray.run_time).to eq 90
      @ray.run_time=12
      expect(@ray.run_time).to eq(12)
    end
    it "should be able to get and set director" do
      expect(@ray.director).to eq "Director"
      @ray.director="Snoop"
      expect(@ray.director).to eq("Snoop")
    end
    it "should be able to get and set producer" do
      expect(@ray.producer).to eq ""
      @ray.producer="John"
      expect(@ray.producer).to eq("John")
    end
  end

end
