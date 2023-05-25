require 'rails_helper'

RSpec.describe "Markets Index Page" do
  it "visit the markets index page" do
    visit 'api/v0/markets'

    expect(page).to have_content("Markets")
  end
end