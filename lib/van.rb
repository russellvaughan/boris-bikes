require './lib/garage.rb'

class Van
  attr_accessor :bike_hold

  def initialize
    @bike_hold = []
  end


  def collect(location)
    if  location.class == DockingStation
      location.bikes.select do |bike|
          if bike.working == false
          @bike_hold  << bike
          location.bikes = []
            end
          end
    else  location.class == Garage
          self.bike_hold = location.fixed_bikes
          @fixed_bikes = []
    end 
 end
  

  def deliver(location)
    if location.class == Garage
    location.broken_bikes = @bike_hold
    @bike_hold = []
    else
    location.class == DockingStation
    location.bikes = self.bike_hold
    @bike_hold = []
    end
  end

end
