require 'rails_helper'

feature 'reviewing' do
  before { Restaurant.create(name: 'KFC') }

  scenario 'allows users to leave a review using a form' do
    visit '/restaurants'
    click_link 'Review'
    fill_in 'Thoughts', with: "So so"
    select '3', from: 'Rating'
    click_button 'Leave Review'

    expect(page).to have_content('So so')
  end
end
