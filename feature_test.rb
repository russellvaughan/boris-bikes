require './lib/docking_station.rb'
require './lib/bike.rb'

station = DockingStation.new
puts "station = #{station}"
bike = Bike.new
puts "bike = #{bike}"
puts "station.dock(bike) = #{station.dock(bike)}"
puts "station.bike = #{station.bike}"
