require 'docking_station'

describe DockingStation do
	bike = Bike.new

	it {is_expected.to respond_to :release_bike}

	it "releases working bike" do
		expect(bike).to be_working
	end

	it "return bike has one argument" do
		expect(subject).to respond_to(:dock).with(1).argument
	end

	it "docks a bike" do
		expect(subject.dock(bike)).to eq bike
	end



	it "declares bike has been released" do
		subject.dock(bike) #subject == DockingStation.new
		expect(subject.release_bike).to eq bike
	end

	it "raises an error when there are no bikes available" do
		expect {subject.release_bike}.to raise_error("no bike available")
	end

end
# docking station
# 1. test for error messgae when no bikes availabl
# 2. test for when we call .release_bike and a bike is released
