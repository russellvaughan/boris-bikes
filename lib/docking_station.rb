require_relative 'bike'

class DockingStation
	
  DEFAULT_CAPACITY = 20
	
  attr_reader :bikes, :capacity
	
  def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

  def release_bike
    @bikes.each do |bike| 
       if bike.working == true 
         working_bike = bike
         @bikes.delete(bike)
         return working_bike
       end
     end
    raise "No bikes availiable error" 
  end
  
  def dock bike
    raise "Docking Station is full" if full?
    @bikes << bike
  end

private

  def full?
  	if @bikes.length == @capacity
  		true
  	else
  		false
  	end
  end

  def  empty?
  	if  bikes.length == 0
  		true
  	else
  		false
  	end

  end
end