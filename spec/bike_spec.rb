require 'bike'
describe Bike do

  it { is_expected.to respond_to :working?}

  it { is_expected.to respond_to :report}

  describe '#report' do

		it 'initializes a bike as working' do
			expect((Bike.new).working?).to eq true
		end
		it 'changes the status when broken' do
			expect(subject.report).to eq false
		end
	end
end