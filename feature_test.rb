require './lib/docking_station.rb'
require './lib/bike.rb'

station = DockingStation.new
bike = Bike.new
station.dock(bike)
station.bike
