require_relative 'DigitalItem.rb'
class Song < DigitalItem

  attr_accessor :artist, :run_time
  def initialize name, price, download_size=0
    super(name, price, download_size)
    @artist = ""
    @run_time = 0
  end

end
