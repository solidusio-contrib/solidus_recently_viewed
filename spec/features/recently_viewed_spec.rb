require 'spec_helper'

feature 'Recently Viewed Products', js: true do
  background do
    %w(Mug Shirt Jersey).each { |name| create(:product, name: "#{name}") }
  end

  scenario 'keep track of recently viewed products' do
    visit spree.root_path
    click_link 'Mug'
    click_link 'Home'
    click_link 'Jersey'
    click_link 'Home'
    within(:css, 'ul#recently_viewed_products') do
      expect(page).to have_text 'Mug'
      expect(page).to have_text 'Jersey'
    end
  end
end
