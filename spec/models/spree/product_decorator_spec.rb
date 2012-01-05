require 'spec_helper'

describe Spree::Product do
  before(:each) do
    3.times { Factory(:product) }
  end

  describe "Spree::Product.find_by_array_of_ids" do
    it "should return the products specified in the array of product ids" do
      product_ids = [1,2,3]
      products = Spree::Product.find_by_array_of_ids(product_ids)
      products.size.should == 3
    end

    it "should ignore nonexistant product ids and still return correctly specified products" do
      product_ids = [1,2,200]
      products = Spree::Product.find_by_array_of_ids(product_ids)
      products.size.should == 2
    end

    it "should return an empty array when no valid ids are specified" do
      products = Spree::Product.find_by_array_of_ids([200])
      products.should == []
    end
  end
end
