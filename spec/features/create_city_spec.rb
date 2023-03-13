require 'rails_helper'

RSpec.describe 'Creating a city', type: :feature do
  scenario 'valid inputs' do
    visit new_city_path
    fill_in 'Name', with: 'Minneapolis'
    click_on 'Create City'
    visit cities_path
    expect(page).to have_content('Minneapolis')
  end

  scenario 'invalid inputs' do
    visit new_city_path
    fill_in 'Name', with: ''
    click_on 'Create City'
    expect(page).to have_content("Name can't be blank")
  end
end