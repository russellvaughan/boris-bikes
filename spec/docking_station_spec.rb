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
      expect(dock).to eq (bike)
    end

    it 'raise error when docking station is full' do
      dock = subject.dock(Bike.new)
      bike = Bike.new
      expect{subject.dock(bike)}.to raise_error("Docking Station is full")
    end

  end

  it {is_expected.to respond_to :bike}

  it 'bike shows docked bikes' do
    bike1 = Bike.new
    dock = subject.dock(bike1)
    expect(subject.bike).to eq dock
  end
end