FactoryGirl.define do
  factory :product do
    name          { Faker::Beer.name }
    price         "5.00"
    image         "Picture_of_product"
    description   "This is a beautiful ID. Buy it."
  end
end
