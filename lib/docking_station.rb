require_relative 'bike'
class DockingStation
	attr_reader :bikes
	def initialize
		@bikes = []
	end
  
  def release_bike
    raise "No bikes availiable error" unless @bikes.length > 0 
    @bikes
  end
  def dock bike
    raise "Docking Station is full" if @bikes.length == 20
    @bikes << bike
   
  end
end

#docking_station = DockingStation.new
#docking_station.dock(Bike.new)
#docking_station.bikes