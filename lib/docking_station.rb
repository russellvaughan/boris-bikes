require "bike.rb"
# in lib/docking_station.rb
class DockingStation
  attr_reader :bikes_docked
 
    def initialize
    @bikes_docked = []
    end

    def release_bike
    	raise "no bikes to release" if empty?
    	@bikes_docked.pop
    	
    end
   
    def dock(bike)
    	raise "Docking Station Full" if full?
    	@bikes_docked << bike
    end
 
 private

    def full? 
    true if @bikes_docked.length >= 20
    end

    def empty?
    true if @bikes_docked.length < 20
    end
  end
