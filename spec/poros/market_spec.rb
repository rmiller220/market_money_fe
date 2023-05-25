require 'rails_helper'

RSpec.describe Market do
  describe 'initialize' do
    it 'exists' do
      data = {id: 1, attributes: {name: "Test Market", street: "123 Test St", city: "Test City", state: "Test State", zip: "12345"}}
      market = Market.new(data)

      expect(market).to be_a(Market)
      expect(market.id).to eq(1)
      expect(market.name).to eq("Test Market")
      expect(market.street).to eq("123 Test St")
      expect(market.city).to eq("Test City")
      expect(market.state).to eq("Test State")
      expect(market.zip).to eq("12345")
    end
  end
end