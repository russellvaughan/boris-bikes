require './lib/bike.rb'

class DockingStation

	attr_reader :bike

	def release_bike
		fail "no bike available" unless @bike
		@bike
	end

	def dock(bike)
		fail "warning bike already docked" if @bike
		@bike = bike
	end
	
end
