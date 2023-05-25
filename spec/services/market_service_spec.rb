require 'rails_helper'

RSpec.describe "Market Service" do
  before do
    @market = MarketService.new
  end

  it "can get all markets" do 
    
    expect(@market.all_markets).to be_a(Hash)
    expect(@market.all_markets[:data]).to be_an(Array)

    market_data = @market.all_markets[:data]
    expect(market_data.count).to eq(846)

    first_market = market_data.first
    expect(first_market).to be_a(Hash)
    expect(first_market).to have_key(:id)
    expect(first_market[:id]).to be_an(String)
    expect(first_market[:attributes]).to be_a(Hash)
    expect(first_market[:attributes]).to have_key(:name)
    expect(first_market[:attributes][:name]).to be_a(String)
    expect(first_market[:attributes]).to have_key(:street)
    expect(first_market[:attributes][:street]).to be_a(String)
    expect(first_market[:attributes]).to have_key(:city)
    expect(first_market[:attributes][:city]).to be_a(String)
    expect(first_market[:attributes]).to have_key(:county)
    expect(first_market[:attributes][:county]).to be_a(String)
    expect(first_market[:attributes]).to have_key(:state)
    expect(first_market[:attributes][:state]).to be_a(String)
    expect(first_market[:attributes]).to have_key(:zip)
    expect(first_market[:attributes][:zip]).to be_a(String)
    expect(first_market[:attributes]).to have_key(:vendor_count)
    expect(first_market[:attributes][:vendor_count]).to be_an(Integer)
  end
end