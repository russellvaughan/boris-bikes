require 'docking_station'
require "bike.rb"


describe DockingStation do
 
    it { respond_to(:release_bike) }

    it "responds to the method dock" do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it "responds to the method bikes_docked" do
      expect(subject).to respond_to(:bikes_docked)
    end

    it "returns true if a bike has been docked" do
    (subject).dock(Bike.new)
    expect(subject.bikes_docked).to be_truthy
    end

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
