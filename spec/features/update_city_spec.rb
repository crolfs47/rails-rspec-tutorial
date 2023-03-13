require 'rails_helper'

RSpec.describe 'Updating a city', type: :feature do
  scenario 'valid inputs' do
    nyc = City.create!(name: 'NYC')
    visit edit_city_path(id: nyc.id)
    fill_in 'Name', with: 'New York City'
    click_on 'Update City'
    visit cities_path
    expect(page).to have_content('New York City')
  end
end