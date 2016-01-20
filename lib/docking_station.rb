require_relative 'bike'
class DockingStation
  attr_reader :bike
  def release_bike
    raise "No bikes availiable error" unless @bike
    @bike
  end
  def dock bike
    raise "Docking Station is full" unless !@bike
    @bike = bike
  end
end