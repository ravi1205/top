require 'rails_helper'

RSpec.describe "places/index", type: :view do
  before(:each) do
    assign(:places, [
      Place.create!(
        :country => "Country",
        :capital => "Capital",
        :president => "President",
        :population => "Population"
      ),
      Place.create!(
        :country => "Country",
        :capital => "Capital",
        :president => "President",
        :population => "Population"
      )
    ])
  end

  it "renders a list of places" do
    render
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Capital".to_s, :count => 2
    assert_select "tr>td", :text => "President".to_s, :count => 2
    assert_select "tr>td", :text => "Population".to_s, :count => 2
  end
end
