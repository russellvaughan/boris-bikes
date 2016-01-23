require './lib/garage'

describe Garage do
  it 'creares new instances of garage' do
  expect(garage = Garage.new).to be_a Garage
  end
end
