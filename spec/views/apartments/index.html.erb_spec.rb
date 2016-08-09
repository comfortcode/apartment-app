require 'rails_helper'

RSpec.describe "apartments/index", type: :view do
  before(:each) do
    assign(:apartments, [
      Apartment.create!(
        :street => "Street",
        :to_date_open => false,
        :flex_dates => false,
        :price => "9.99",
        :price_neg => false,
        :agent_fee => false,
        :furnished => false,
        :package => false,
        :flights => "9.99",
        :beds => "9.99",
        :baths => "9.99",
        :description => "MyText"
      ),
      Apartment.create!(
        :street => "Street",
        :to_date_open => false,
        :flex_dates => false,
        :price => "9.99",
        :price_neg => false,
        :agent_fee => false,
        :furnished => false,
        :package => false,
        :flights => "9.99",
        :beds => "9.99",
        :baths => "9.99",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of apartments" do
    render
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
