require 'docking_station'

describe DockingStation do
let(:bike) { double :bike }

  describe '#release_bike' do
    it {is_expected.to respond_to :release_bike}

    it 'release working bike' do
      allow(bike).to receive(:working).and_return(true)
      expect(bike.working).to eq true
    end

    it 'raise error when no bikes at docking station' do
      expect{subject.release_bike}.to raise_error("No bikes availiable error")
    end

    it 'doesnt release bike if broken' do
      allow(bike).to receive(:report).and_return(false)
      allow(bike).to receive(:working).and_return(false)
      bike.report
      subject.dock(bike)
      expect{subject.release_bike}.to raise_error("No bikes availiable error")
    end
  
    it 'releases a working bike if multiple bikes are docked and at least one is broken' do
    station = described_class.new
    3.times { station.dock(bike)}
    allow(bike).to receive(:working).and_return(true)
    bike2 = double(:bike)
    allow(bike2).to receive(:report).and_return(false)
    bike2.report
    station.dock(bike2)
    allow(bike2).to receive(:working).and_return(false)
    expect(station.release_bike.working).to eq true
    end

  end
 
  describe '#dock' do

    

    it 'dock bike' do
      dock = subject.dock(bike)
      expect(dock).to eq [(bike)]
    end

    it 'raise error when docking station is full' do
      DockingStation::DEFAULT_CAPACITY.times{subject.dock(bike)}
      expect{subject.dock(bike)}.to raise_error("Docking Station is full")
    end

    it 'accepts broken bikes' do
      allow(bike).to receive(:report).and_return(false)
      allow(bike).to receive(:working).and_return(false)
      bike.report
      expect(subject.dock(bike)).to eq [(bike)]
    end

  end

  it {is_expected.to respond_to :bikes}

  it 'bike shows docked bikes' do
    bike1 = bike
    dock = subject.dock(bike1)
    expect(subject.bikes).to eq dock
  end

  it 'can hold 20 bikes' do
  DockingStation::DEFAULT_CAPACITY.times{subject.dock(bike)}
  expect(subject.bikes.length).to eq 20
  end

  it 'has a default capacity of # of bikes' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'can change capacity' do
    expect((DockingStation.new (50)).capacity).to eq 50
  end
 
 end 
    

