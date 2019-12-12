require 'rails_helper'

RSpec.describe "places/edit", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :country => "MyString",
      :capital => "MyString",
      :president => "MyString",
      :population => "MyString"
    ))
  end

  it "renders the edit place form" do
    render

    assert_select "form[action=?][method=?]", place_path(@place), "post" do

      assert_select "input[name=?]", "place[country]"

      assert_select "input[name=?]", "place[capital]"

      assert_select "input[name=?]", "place[president]"

      assert_select "input[name=?]", "place[population]"
    end
  end
end
