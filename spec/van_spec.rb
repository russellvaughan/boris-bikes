require 'van'
require 'garage'
require 'docking_station'


describe Van do
  let(:bike1) {double(:bike, :working => true)}
  let(:bike2) {double(:bike, :working => false)}
  let(:bike3) {double(:bike, :working => false)}
  #let(:van) {double(:van, :fake_collect => [bike1, bike2])}
  let(:docking_station) {double(:docking_station, :bikes => [bike1, bike2])}
    let(:docking_station) {double(:docking_station, :class => DockingStation)}
  let(:garage) {double(:garage)}
   let(:garage) {double(:garage, :class => Garage)}
 #let(:garage) {double(:garage, :fixed_bikes= => [bike1])}


  it 'creates a new instance of Van class' do
    expect(subject.class).to be Van
  end

  describe '#collect' do
    it "responds to 'collect with one argument'" do
      expect(subject).to respond_to(:collect).with(1).argument
    end
 
    it 'collects fixed bikes from the garages' do
    station = DockingStation.new
    bike = Bike.new
    garage = Garage.new
    van = Van.new
    bike.report_broken
    station.dock(bike)
    van.collect(station)
    van.deliver(garage)
    #allow(garage).to receive(:initialize)
    #allow(garage).to receive(:fixed_bikes=)
    #allow(garage).to receive(:fixed_bikes)
    garage.fix_bikes
    van.collect(garage)
    expect(van.bike_hold).to eq [bike]
  end

  end

  it 'collects broken bikes' do
    station = DockingStation.new
    bike1 = Bike.new
    garage = Garage.new
    van = Van.new
    bike1.report_broken
    station.dock(bike1)
    van.collect(station)
    expect(van.bike_hold).to eq [bike1]
  end

  

  describe '#deliver' do
    it 'delivers broken bikes to garage' do
      allow(subject).to receive(:collect) {[bike1, bike2]}
      subject.collect(docking_station)
      allow(garage).to receive(:broken_bikes=) {[]}
      expect(subject.deliver(garage)).to eq []

    end
  end




end