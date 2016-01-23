require 'van'
require 'garage'


describe Van do
  let(:bike1) {double(:bike, :working => true)}
  let(:bike2) {double(:bike, :working => false)}
  let(:bike3) {double(:bike, :working => false)}
  let(:van) {double(:van, :fake_collect => [bike1, bike2])}
  let(:docking_station) {double(:docking_station, :bikes => [bike1, bike2])}
  let(:garage) {double(:garage)}



  it 'creates a new instance of Van class' do
    expect(subject.class).to be Van
  end

  describe '#collect' do
    it "responds to 'collect with one argument'" do
      expect(subject).to respond_to(:collect).with(1).argument
    end
  end

  it 'collects broken bikes' do
    allow(docking_station).to receive(:bikes).and_return([bike1, bike2, bike3])
    expect(docking_station.bikes).to eq([bike1, bike2, bike3])
    docking_station.bikes
    expect(subject.collect(docking_station)).to eq [bike2, bike3]
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