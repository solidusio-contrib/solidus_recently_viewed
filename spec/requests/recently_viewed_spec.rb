require 'spec_helper'

describe "Recently Viewed Products" do
  before(:each) do
    product1 = Factory(:product, :name => "Mug")
    product2 = Factory(:product, :name => "Shirt")
    product3 = Factory(:product, :name => "Jersey")
  end

  it "should keep track of recently viewed products" do
    visit root_path
    click_link "Mug"
    click_link "Home"
    click_link "Jersey"
    click_link "Home"
    within(:css, "ul#recently_viewed_products") do
      page.should have_content "Mug"
      page.should have_content "Jersey"
    end
  end
end
