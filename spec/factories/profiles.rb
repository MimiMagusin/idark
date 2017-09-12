FactoryGirl.define do
  factory :profile do
    first_name    { Faker::Name.first_name }
    last_name     { Faker::Name.last_name }
    age           18
    city          "Amsterdam"
    address       "Singel 18"
    postal_code   "1032 XY"
    billing_info  { Faker::Business.credit_card_number }
  end
end
