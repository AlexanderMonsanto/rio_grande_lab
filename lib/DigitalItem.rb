require_relative 'Item.rb'

class DigitalItem < Item

    attr_reader :quantity
    attr_accessor :name, :price, :description, :download_size

    def initialize name, price, download_size=0
        super(name,price)
        @quantity = 1
        @description = ""
        @weight = -1
        @download_size = download_size
    end

    def sell amount
      @quantity
    end

    def stock amount
      @quantity
    end

    def returns amount
      @quantity
      true
    end

    # def ship_price amount
    #   false
    # end
end

