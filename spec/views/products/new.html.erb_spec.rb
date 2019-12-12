require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :category => "MyString",
      :dish_style => "MyString",
      :title => "MyString",
      :desc => "MyText",
      :spice_level => 1,
      :calories => "MyString",
      :unit_price => "9.99"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[category]"

      assert_select "input[name=?]", "product[dish_style]"

      assert_select "input[name=?]", "product[title]"

      assert_select "textarea[name=?]", "product[desc]"

      assert_select "input[name=?]", "product[spice_level]"

      assert_select "input[name=?]", "product[calories]"

      assert_select "input[name=?]", "product[unit_price]"
    end
  end
end
