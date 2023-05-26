require 'rails_helper'

RSpec.describe "Markets Index Page" do
  before do
    @market = MarketFacade.new.get_market_data
  end
  it "visit the markets index page" do
    visit '/markets'

    expect(page).to have_content("Markets")
    expect(page).to have_content("Name")
    expect(page).to have_content("City")
    expect(page).to have_content("State")
    expect(page).to have_content("Find More Info")
    expect(page).to have_content(@market.first.name)
    expect(page).to have_content(@market.first.city)
    expect(page).to have_content(@market.first.state)
    expect(page).to have_button("More Info")
  end
end