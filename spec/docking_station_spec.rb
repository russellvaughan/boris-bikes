require 'docking_station'

describe DockingStation do
	it {is_expected.to respond_to :release_bike}
	it "releases working bike" do
		bike = subject.release_bike
		expect(bike).to be_working
	end
	
	it "return bike has one argument" do
		expect(subject).to respond_to(:dock).with(1).argument
	end

	it "shows if bike has been docked" do
		expect(subject).to be_docked
	end
end
