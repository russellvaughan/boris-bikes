require './lib/bike.rb'
require 'bikecontainer'

class DockingStation

  include BikeContainer

	attr_accessor :capacity, :bikes

	def release_bike
		bikes.each do |bike|
			 if bike.working
			 	bikes.delete(bike)
			 	return bike
			 end
		end
	fail "no bike available"
	end

	def dock(bike)
		fail "warning 20 bikes already docked" if full?
		bikes.push(bike)
	end

end
