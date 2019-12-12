require 'rails_helper'

RSpec.describe "places/show", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :country => "Country",
      :capital => "Capital",
      :president => "President",
      :population => "Population"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Capital/)
    expect(rendered).to match(/President/)
    expect(rendered).to match(/Population/)
  end
end
