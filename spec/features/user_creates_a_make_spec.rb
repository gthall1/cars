require 'spec_helper'
require 'rails_helper'

feature "User creates a new Make" do
  # As a car salesperson
  # I want to record a car manufacturer
  # So that I can keep track of the types of cars found in the lot
  #
  # Acceptance Criteria:
  #
  # * I must provide a manufacturer name and country

  it "creates a valid make" do
    #Visit the page containing the new make form
    visit '/makes/new'

    # Fill in the input fields 'Name' and 'Country'
    fill_in "Name", with: "Ford"
    fill_in "Country", with: "USA"
    click_on "Create Make"

    expect(page).to have_content "Welcome to the Used Car Sales Place Thing"
  end

  it "requires a name and country" do
    visit '/makes/new'

    click_on "Create Make"

    expect(page).to have_content "Please fill out this field."
  end
end







