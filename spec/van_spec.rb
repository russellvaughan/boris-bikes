require 'van'


describe Van do
  let(:bike1) {double(:bike, :working => true)}
  let(:bike2) {double(:bike, :working => false)}
  let(:bike3) {double(:bike, :working => false)}

  let(:docking_station) {double(:docking_station, :bikes => [bike1, bike2])}



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



end