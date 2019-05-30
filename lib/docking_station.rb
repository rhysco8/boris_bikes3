require './lib/bike.rb'

class DockingStation
  attr_reader :bike
  
  def release_bike
    raise "No bike" if @bike.nil?
    @bike
  end

  def dock(bike)
    raise "Docking station full" if !@bike.nil?
    @bike = bike
  end
end
