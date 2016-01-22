
require './lib/docking_station'
class Van

attr_accessor :units
	
	def initialize 
	@units = []
	end

	def collect(station)
	  if station.bikes.last.working == false      #for SRP will add #broken? method later
	   @units << station.bikes.pop
	  else
	  	raise "no bikes to collect"
	  end

	end

	#private 

	#def broken?
	#return true if station.bikes.last.working == false
	
	#end


end