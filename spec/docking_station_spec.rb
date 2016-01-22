require 'docking_station'

describe DockingStation do

  describe '#release_bike' do
    it {is_expected.to respond_to :release_bike}

    it 'release working bike' do
      bike = Bike.new
      expect(bike.working).to eq true
    end

    it 'raise error when no bikes at docking station' do
      expect{subject.release_bike}.to raise_error("No bikes availiable error")
    end

    it 'doesnt release bike if broken' do
      bike = Bike.new
      bike.report
      subject.dock(bike)
      expect{subject.release_bike}.to raise_error("No bikes availiable error")
    end
  end

  describe '#dock' do

    it {is_expected.to respond_to(:dock).with(1).argument}

    it 'dock bike' do
      bike = Bike.new
      dock = subject.dock(bike)
      expect(dock).to eq [(bike)]
    end

    it 'raise error when docking station is full' do
      DockingStation::DEFAULT_CAPACITY.times{subject.dock(Bike.new)}
      expect{subject.dock(Bike.new)}.to raise_error("Docking Station is full")
    end

    it 'accepts broken bikes' do
      bike = Bike.new
      bike.report
      expect(subject.dock(bike)).to eq [(bike)]
    end

  end

  it {is_expected.to respond_to :bikes}

  it 'bike shows docked bikes' do
    bike1 = Bike.new
    dock = subject.dock(bike1)
    expect(subject.bikes).to eq dock
  end

  it 'can hold 20 bikes' do
  DockingStation::DEFAULT_CAPACITY.times{subject.dock(Bike.new)}
  expect(subject.bikes.length).to eq 20
  end

  it 'has a default capacity of # of bikes' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'can change capacity' do
    expect((DockingStation.new (50)).capacity).to eq 50
  end
  
  it 'releases a working bike if multiple bikes are docked and at least one is broken' do
    station = described_class.new
    3.times { station.dock(Bike.new)}
    bike = Bike.new
    bike.report
    station.dock(bike)
    expect(station.release_bike).to be_a Bike
  end


end