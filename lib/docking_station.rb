require "bike.rb"
# in lib/docking_station.rb
class DockingStation
  attr_reader :bikes_docked
    def release_bike
    	raise "no bikes to release" unless @bikes_docked
    	bikes_docked
    	
    end
   
    def dock(bike)
    	raise "Docking Station Full" if @bikes_docked
    	@bikes_docked = bike
    end
  end
