require 'rails_helper'

RSpec.describe 'Deleting a city', type: :feature do
  scenario 'success' do
    nyc = City.create!(name: 'NYC')
    visit city_path(id: nyc.id)
    expect(page).to have_content('NYC')

    click_on 'Destroy'
    # accept_alert
    expect(page).to have_content('City was successfully destroyed.')
    expect(page).not_to have_content('NYC')
  end
end