FactoryGirl.define do
  factory :apartment do
    street "MyString"
    from_date "2016-08-09"
    to_date "2016-08-09"
    to_date_open false
    flex_dates false
    price "9.99"
    price_neg false
    agent_fee false
    furnished false
    package false
    flights "9.99"
    beds "9.99"
    baths "9.99"
    description "MyText"
  end
end
