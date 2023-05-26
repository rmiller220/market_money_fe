require 'rails_helper'

RSpec.describe "Markets Show Page" do
  before do
    @market = MarketFacade.new.get_market("322458")
    @vendors = MarketFacade.new.get_market_vendors("322458")
  end
  it "visit the markets show page" do

    visit "/markets/322458"

    expect(page).to have_content(@market.name)
    expect(page).to have_content(@market.street.strip)
    expect(page).to have_content(@market.city)
    expect(page).to have_content(@market.state)
    expect(page).to have_content(@market.zip)
    expect(page).to have_link(@vendors.first.name)
  end
end