require 'rspec'
require './lib/boat'

RSpec.describe Boat do

  describe 'Object Creation' do
      
    it 'exists' do
      kayak = Boat.new(:kayak, 20)
      expect(kayak).to be_a(Boat)
    end

    it 'has readable attributes' do
      kayak = Boat.new(:kayak, 20)

      expect(kayak).to be_a(Boat)
      expect(kayak.type).to eq(:kayak)
      expect(kayak.price_per_hour).to eq(20)
      expect(kayak.hours_rented).to eq(0)
    end 

    it 'can add hours' do
      kayak = Boat.new(:kayak, 20)
      kayak.add_hour
      kayak.add_hour
      kayak.add_hour

      expect(kayak).to be_a(Boat)
      expect(kayak.type).to eq(:kayak)
      expect(kayak.price_per_hour).to eq(20)
      expect(kayak.hours_rented).to eq(3)
    end
  end 
end

