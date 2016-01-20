require 'docking_station'
require "bike.rb"

describe 'no capacity left' do
it "raises an error when there are no capacity left" do
	docking_station = DockingStation.new
	docking_station.dock Bike.new
	expect{docking_station.dock(Bike.new)}.to raise_error "Docking Station Full"
end
end