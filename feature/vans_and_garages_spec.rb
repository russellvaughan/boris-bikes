require 'van'
require 'docking_station'

describe "van" do
	it "collects bikes from station" do
	van = Van.new
	station=DockingStation.new
	van.collect(station)
	expect(van.units).to eq 3
	end
	
end