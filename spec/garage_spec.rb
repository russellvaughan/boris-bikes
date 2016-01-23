require './lib/garage'
require './lib/bike'
require './lib/docking_station'
require './lib/van'

describe Garage do
let(:bike) {double(:bike, :working => false)}
let(:garage) {double(:garage, :broken_bikes => [bike])}

  it 'creares new instances of garage' do
  expect(garage = Garage.new).to be_a Garage
  end

describe "#fix_bikes" do 
	it "fixes broken bikes" do
	station = DockingStation.new
	bike = Bike.new
	garage = Garage.new
	van = Van.new
	bike.report_broken
	station.dock(bike)
	van.collect(station)
	van.deliver(garage)
	garage.broken_bikes
	expect(garage.fix_bikes).to eq [bike]
	end
	end
end
