require './lib/bike.rb'

class DockingStation

	attr_reader :capacity

	DEFAULT_CAPACITY = 20

	def initialize(capacity=DEFAULT_CAPACITY)
		@bikes = []
	  @capacity = capacity
	end



	def release_bike
		fail "no bike available" if empty?
		bikes.pop
	end

	def dock(bike)
		fail "warning 20 bikes already docked" if full?
		bikes.push(bike)
	end

	private

	attr_reader :bikes

	def full?
		bikes.count >= capacity
	end

	def empty?
		bikes.count == 0
	end


end
