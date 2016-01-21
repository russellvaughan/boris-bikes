require './lib/bike.rb'

class DockingStation
	def initialize
		@bikes = []
	end

	attr_reader :bike

	def release_bike
		fail "no bike available" if @bikes.empty?
		@bikes.pop
	end

	def dock(bike)
		fail "warning 20 bikes already docked" if @bikes.count == 20
		@bikes.push(bike)
	end

end
