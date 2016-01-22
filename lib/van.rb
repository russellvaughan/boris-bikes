
class Van

  def collect(docking_station)
    docking_station.bikes.select do |bike|
      broken_bikes = []
      if bike.working == false
        broken_bikes << bike
      end
    end


  end


end