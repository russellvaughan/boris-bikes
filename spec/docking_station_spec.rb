require 'docking_station'

describe DockingStation do
    #it "responds to the method release_bike" do
       # expect(subject).to respond_to(:release_bike)
       it { respond_to(:release_bike) }

    it "responds to the method dock_bike" do
      expect(subject).to respond_to(:dock_bike)
    end

    it "responds to the method bikes_docked" do
      expect(subject).to respond_to(:bikes_docked)
    end

    it "creates a new instance of bike when a bike is docked to the docking station" do
      expect(subject.dock_bike).to be_a Bike
    end

    it "returns true if a bike has been docked" do
      docking_station = DockingStation.new
      newbike = docking_station.dock_bike
      expect(docking_station.bikes_docked).to be_truthy
    end
       #it { respond_to(:dock_bike) }


end
