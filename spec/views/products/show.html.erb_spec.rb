require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :category => "Category",
      :dish_style => "Dish Style",
      :title => "Title",
      :desc => "MyText",
      :spice_level => 2,
      :calories => "Calories",
      :unit_price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Dish Style/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Calories/)
    expect(rendered).to match(/9.99/)
  end
end
