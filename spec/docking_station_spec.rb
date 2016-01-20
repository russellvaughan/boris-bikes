require 'docking_station'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

  it 'release working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it 'dock bike' do
    bike = subject.release_bike
    dock = subject.dock(bike)
    expect(dock).to eq (bike)
  end

  it {is_expected.to respond_to :bike}

  it 'bike shows docked bikes' do
    bike1 = subject.release_bike
    dock = subject.dock(bike1)
    expect(subject.bike).to eq dock
  end
end