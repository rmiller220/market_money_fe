require 'rails_helper'

RSpec.describe "Market Facade" do
  it "can get all markets" do
    facade = MarketFacade.new
    
    expect(facade.get_market_data).to be_an(Array)
    expect(facade.get_market_data.count).to eq(846)
    expect(facade.get_market_data).to all(be_a(Market))

  end
end