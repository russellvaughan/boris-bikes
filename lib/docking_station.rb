require_relative 'bike'
class DockingStation
  attr_reader :bike
  def initialize
    @bike = 0
  end
  def release_bike
    if @bike == 0
      raise "No bikes availiable error"
    end
  end
  def dock bike
    @bike = bike
  end
end