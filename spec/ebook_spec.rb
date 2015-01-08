require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    @ebook = EBook.new("The Bible", 0.99, 19)
  end

  describe "Initialization" do
    it "is an instance of a EBook" do
      expect(@ebook).to be_instance_of(EBook)
    end

    it "is assigned a name" do
      expect(@ebook.name).to eq("The Bible")
    end
    it "is assigned a price" do
      expect(@ebook.price).to eq(0.99)
    end
    it "is assigned a download size" do
      expect(@ebook.download_size).to eq(19)
    end
  end

  describe "Inheritance" do
    it "is inherited from Item" do
      expect(EBook < DigitalItem).to eq true
    end
  end

  describe "Accessors" do
    it "should be able to get and set pages" do
      expect(@ebook.pages).to eq 0
      @ebook.pages=12
      expect(@ebook.pages).to eq 12
    end
    it "should be able to get and set author" do
      expect(@ebook.author).to eq ""
      @ebook.author="test"
      expect(@ebook.author).to eq "test"
    end
  end


end
