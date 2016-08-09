require 'rails_helper'

RSpec.describe "apartments/edit", type: :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!(
      :street => "MyString",
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
    ))
  end

  it "renders the edit apartment form" do
    render

    assert_select "form[action=?][method=?]", apartment_path(@apartment), "post" do

      assert_select "input#apartment_street[name=?]", "apartment[street]"

      assert_select "input#apartment_to_date_open[name=?]", "apartment[to_date_open]"

      assert_select "input#apartment_flex_dates[name=?]", "apartment[flex_dates]"

      assert_select "input#apartment_price[name=?]", "apartment[price]"

      assert_select "input#apartment_price_neg[name=?]", "apartment[price_neg]"

      assert_select "input#apartment_agent_fee[name=?]", "apartment[agent_fee]"

      assert_select "input#apartment_furnished[name=?]", "apartment[furnished]"

      assert_select "input#apartment_package[name=?]", "apartment[package]"

      assert_select "input#apartment_flights[name=?]", "apartment[flights]"

      assert_select "input#apartment_beds[name=?]", "apartment[beds]"

      assert_select "input#apartment_baths[name=?]", "apartment[baths]"

      assert_select "textarea#apartment_description[name=?]", "apartment[description]"
    end
  end
end
