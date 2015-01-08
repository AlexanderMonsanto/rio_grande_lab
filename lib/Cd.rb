require_relative 'Item.rb'
class Cd < Item

  attr_accessor :tracks, :artist, :run_time
  def initialize name, price, weight=0
    super(name, price, weight)
    @tracks = 10
    @artist = "Mariah"
    @run_time = 2.30
  end

end
