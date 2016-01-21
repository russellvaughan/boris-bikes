require_relative 'bike'
class DockingStation
	DEFAULT_CAPACITY = 20
	attr_reader :bikes
	def initialize
		@bikes = []
	end

  def release_bike
    raise "No bikes availiable error" if empty?
    @bikes
  end
  def dock bike
    raise "Docking Station is full" if full?
    @bikes << bike
  end

private

  def full?
  	if @bikes.length == DEFAULT_CAPACITY
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