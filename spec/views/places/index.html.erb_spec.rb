require 'rails_helper'

RSpec.describe "places/index", type: :view do
  before(:each) do
    assign(:places, [
      Place.create!(
        :name => "Name",
        :latitude => "9.99",
        :longitude => "9.99"
      ),
      Place.create!(
        :name => "Name",
        :latitude => "9.99",
        :longitude => "9.99"
      )
    ])
  end

  it "renders a list of places" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 0
  end
end
