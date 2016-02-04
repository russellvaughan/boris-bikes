require './lib/garage'
require './lib/bike'
require './lib/docking_station'
require './lib/van'
require 'support/shared_examples_for_bike_container'

describe Garage do
let(:bike) {double(:bike, :working => false)}
let(:garage) {double(:garage, :broken_bikes => [bike])}

it_behaves_like BikeContainer

  it 'fixes broken bikes' do
    bike = double :bike, fix: nil, broken?: false
    subject.add_bike bike
    subject.fix_bikes
    expect(bike).not_to be_broken
  end

	
end
