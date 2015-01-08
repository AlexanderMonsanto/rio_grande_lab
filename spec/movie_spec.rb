require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    @mov = Movie.new("Movie", 10.99, 18)
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@mov).to be_instance_of(Movie)
    end
    it "is assigned a name" do
      expect(@mov.name).to eq("Movie")
    end
    it "is assigned a price" do
      expect(@mov.price).to eq(10.99)
    end
    it "is assigned a download_size" do
      expect(@mov.download_size).to eq(18)
    end
  end

  describe "Inheritance" do
    it "is inherited from DigitalItem" do
      expect(Movie < DigitalItem).to eq true
    end
  end

  describe "Accessors" do
    it "should be able to get and set run_time" do
      expect(@mov.run_time).to eq 0
      @mov.run_time=12
      expect(@mov.run_time).to eq(12)
    end
    it "should be able to get and set director" do
      expect(@mov.director).to eq ""
      @mov.director="Snoop"
      expect(@mov.director).to eq("Snoop")
    end
    it "should be able to get and set producer" do
      expect(@mov.producer).to eq ""
      @mov.producer="John"
      expect(@mov.producer).to eq("John")
    end
  end

end
