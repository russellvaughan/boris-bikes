require './lib/bike'

class Garage

attr_accessor :broken_bikes, :fixed_bikes

  def initialize
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