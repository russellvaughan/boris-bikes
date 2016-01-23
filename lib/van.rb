require './lib/garage.rb'

class Van

  def initialize
    @bike_hold = []
  end


  def collect(docking_station)
    docking_station.bikes.select do |bike|
      if bike.working == false
        @bike_hold  << bike
      end
    end
  end

  def deliver(garage)
    garage.broken_bikes = @bike_hold
    @bike_hold = []

  end

end
