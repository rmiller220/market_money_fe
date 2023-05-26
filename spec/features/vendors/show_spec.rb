require 'rails_helper'

RSpec.describe "Vendors Show Page" do
  before do
    @vendor = MarketFacade.new.get_vendor("55823")
  end
  it "visit the vendors show page" do

    visit "/vendors/55823"

    expect(page).to have_content(@vendor.name)
    expect(page).to have_content("Contact Information")
    expect(page).to have_content("Name:")
    expect(page).to have_content(@vendor.contact_name)
    expect(page).to have_content("Phone:")
    expect(page).to have_content(@vendor.contact_phone)
    expect(page).to have_content("Credit Accepted: No")
    expect(page).to have_content("Description:")
    expect(page).to have_content(@vendor.description)
  end
end