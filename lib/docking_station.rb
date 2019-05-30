require './lib/bike.rb'

class DockingStation
  attr_reader :bike

  def initialize(bike = Bike.new)
    @bike = bike
  end

  def release_bike
    raise "No bike" if @bike.nil?
    @bike
  end

  def dock(bike)
    @bike = bike
  end
end
