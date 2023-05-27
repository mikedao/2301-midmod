require 'rails_helper' 

RSpec.describe 'User can search for characters', type: :feature do
  it 'has total number of characters' do
    visit root_path
    select 'Fire Nation'
    click_on 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content(97)

    visit root_path
    select 'Air Nomads'
    click_on 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content(15)
  end

  it 'has no more than 25' do
    visit root_path
    select 'Fire Nation'
    click_on 'Search For Members'

    expect(page).to have_css('.member', maximum: 25)

    visit root_path
    select 'Air Nomads'
    click_on 'Search For Members'

    expect(page).to have_css('.member', maximum: 25)
  end
  
  it 'has detailed information' do
    visit root_path
    select 'Fire Nation'
    click_on 'Search For Members'

    within("#Afiko") do
      expect(page).to have_content("Name: Afiko")
      expect(page).to have_content("Allies: Fire Nation")
      expect(page).to have_content("Enemies: Aang")
      expect(page).to have_content("Affiliation: Fire Nation")
    end
  end
  # And one more test for detailed information for another nation.
end