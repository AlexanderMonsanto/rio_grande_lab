require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    @digitem = DigitalItem.new("Generic DigItem",1.99)
  end

  describe "Initialization" do
    it "is an instance of the DigitalItem class" do
      expect(@digitem).to be_instance_of(DigitalItem)
    end
    it "is assigned a name" do
      expect(@digitem.name).to eq("Generic DigItem")
    end
    it "is assigned a price" do
      expect(@digitem.price).to eq(1.99)
    end
  end

  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@digitem.quantity).to eq(1)
    end
    it "should be able to get and set name" do
      @digitem.name="New Name"
      expect(@digitem.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @digitem.price=44.99
      expect(@digitem.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@digitem.description).to eq("")
      @digitem.description="test"
      expect(@digitem.description).to eq("test")
    end
    it "should be able to get and set download size" do
      expect(@digitem.download_size).to eq(0)
      @digitem.download_size=10
      expect(@digitem.download_size).to eq(10)
    end
  end

  describe "Methods" do
    it "should be able to stock only 1 item" do
      expect(@digitem.quantity).to eq(1)
    end
    it "should not be able to sell from quantity stock" do
      expect(@digitem.quantity).to eq(1)
    end
    it "should be able to return items and NOT update quantity" do
      result = @digitem.returns 1
      expect(result).to eq(true)
      expect(@digitem.quantity).to eq(1)
    end
    it "ship price should return false" do
      result = @digitem.ship_price -1
      expect(result).to eq(false)
      expect(@digitem.weight).to eq(-1)
    end

  end

end

