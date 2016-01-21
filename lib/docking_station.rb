require "bike.rb"
# in lib/docking_station.rb
class DockingStation
  attr_reader :bikes_docked
 
    def initialize
    @bikes_docked = []
    end

    def release_bike
    	raise "no bikes to release" unless @bikes_docked.length > 0
    	@bikes_docked.pop
    	
    end
   
    def dock(bike)
    	raise "Docking Station Full" if @bikes_docked.length >= 20
    	@bikes_docked << bike
    end
  end
