require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :category => "Category",
        :dish_style => "Dish Style",
        :title => "Title",
        :desc => "MyText",
        :spice_level => 2,
        :calories => "Calories",
        :unit_price => "9.99"
      ),
      Product.create!(
        :category => "Category",
        :dish_style => "Dish Style",
        :title => "Title",
        :desc => "MyText",
        :spice_level => 2,
        :calories => "Calories",
        :unit_price => "9.99"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Dish Style".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Calories".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
