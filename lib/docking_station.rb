require './lib/bike.rb'

class DockingStation
	def initialize
		@bikes = []
	end

	attr_reader :bike

	def release_bike
		fail "no bike available" if empty?
		@bikes.pop
	end

	def dock(bike)
		fail "warning 20 bikes already docked" if full?
		@bikes.push(bike)
	end

	private

	def full?
		@bikes.count >= 20
	end

	def empty?
		@bikes.count == 0
	end


end
