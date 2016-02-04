require './lib/bike.rb'
require 'bikecontainer'

class Garage
include BikeContainer
attr_accessor :broken_bikes, :fixed_bikes, :bikes


  def initialize(capacity=DEFAULT_CAPACITY)
  	@capacity = capacity
  	@bikes = []
    @broken_bikes = []
    @fixed_bikes = []
  end

def fix_bikes

	@broken_bikes.each do |bike|
		bike.working = true 
		@fixed_bikes << bike
	end 
@fixed_bikes
end

end