require './lib/bike.rb'

class DockingStation

	def release_bike
		fail "no bike available" unless @bike
		@bike
	end

	def dock(bike)
		@bike = bike
		bike
	end

	attr_reader :bike

end
