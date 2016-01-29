require './lib/docking_station.rb'
require './lib/bike.rb'
require './lib/garage.rb'

describe Garage do 
	it "fixes bikes and returns to vans" do
	station = DockingStation.new
	bike = Bike.new
	garage = Garage.new
	van = Van.new
	bike.report_broken
	station.dock(bike)
	van.collect(station)
	van.deliver(garage)
	garage.fix_bikes
	expect(bike.working).to eq true


end
end