require 'docking_station'

describe DockingStation do

  describe '#release_bike' do
    it {is_expected.to respond_to :release_bike}

    it 'release working bike' do
      bike = Bike.new
      expect(bike).to be_working
    end

    it 'raise error when no bikes at docking station' do
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
end