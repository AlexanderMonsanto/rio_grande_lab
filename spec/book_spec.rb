require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    @book = Book.new("The Bible", 0.99, 2.2)
  end

  describe "Initialization" do
    it "is an instance of a Book" do
      expect(@book).to be_instance_of(Book)
    end

    it "is assigned a name" do
      expect(@book.name).to eq("The Bible")
    end
    it "is assigned a price" do
      expect(@book.price).to eq(0.99)
    end
    it "is assigned a weight" do
      expect(@book.weight).to eq(2.2)
    end
  end

  describe "Inheritance" do
    it "is inherited from Item" do
      expect(Book < Item).to eq true
    end
  end

  describe "Accessors" do
    it "should be able to get and set pages" do
      expect(@book.pages).to eq 0
      @book.pages=12
      expect(@book.pages).to eq(12)
    end
    it "should be able to get and set author" do
      expect(@book.author).to eq ""
      @book.author="test"
      expect(@book.author).to eq("test")
    end
  end


end
