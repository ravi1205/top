require 'rails_helper'

RSpec.describe "places/new", type: :view do
  before(:each) do
    assign(:place, Place.new(
      :country => "MyString",
      :capital => "MyString",
      :president => "MyString",
      :population => "MyString"
    ))
  end

  it "renders new place form" do
    render

    assert_select "form[action=?][method=?]", places_path, "post" do

      assert_select "input[name=?]", "place[country]"

      assert_select "input[name=?]", "place[capital]"

      assert_select "input[name=?]", "place[president]"

      assert_select "input[name=?]", "place[population]"
    end
  end
end
