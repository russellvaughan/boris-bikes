require 'van'
require 'docking_station'

describe Van do
	let(:station) { DockingStation.new}  
	let(:bike) { Bike.new} 
	let(:van) { Van.new} 
	it "creates a new instance of the van class" do
	expect(subject.class).to be Van
	end
	it {is_expected.to respond_to(:collect).with(1).argument}
	  

#describe '#check_status' do
#it "checks if broken bikes in station" do

	describe '#collect' do
		it 'collects a broken bike at station' do
	    bike_b = bike
	    bike_b.report
		station.dock(bike_b)
    	expect(van.collect(station)).to eq [bike_b]
    	end

    	it 'collects broken bikes and leaves working bikes' do 
    	station.dock(bike)
    	bike2 = bike
    	bike2.report 
    	station.dock(bike2)
    	expect(van.collect(station)).to eq [bike2]
    	end	
	end

end	


#end
#end