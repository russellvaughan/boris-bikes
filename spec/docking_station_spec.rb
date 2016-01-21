require 'docking_station'
require "bike.rb"

describe DockingStation do
    #it "responds to the method release_bike" do
       # expect(subject).to respond_to(:release_bike)
       it { respond_to(:release_bike) }

    it "responds to the method dock" do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it "responds to the method bikes_docked" do
      expect(subject).to respond_to(:bikes_docked)
    end


    #it "creates a new instance of bike when a bike is docked to the docking station" do
     # expect(subject.dock_bike).to be_a Bike
    #end

    #it "returns true if a bike has been docked" do
      #docking_station = DockingStation.new
      #newbike = docking_station.dock_bike
     # expect(docking_station.bikes_docked).to be_truthy
   # end
       #it { respond_to(:dock_bike) }

      it "returns docked bikes" do
      bike =  Bike.new
      subject.dock(bike)
      expect(subject.bikes_docked).to eq [bike]
    end

  describe '#release_bike' do
     it "raises an error if there are no bikes to be released" do
      expect {subject.release_bike}.to raise_error "no bikes to release"
    end
  end

  describe '#dock' do
    it 'raises an error when full' do
      20.times{subject.dock Bike.new}
      expect { subject.dock Bike.new }.to raise_error "Docking Station Full"
end
end      

end
