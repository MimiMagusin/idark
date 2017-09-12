require 'rails_helper'

describe "Navigating products" do


  let(:catalogue) { create :catalogue }
  let!(:product) { create :product, name: "Name 1", catalogue: catalogue, image:"http://res.cloudinary.com/dnxpj95us/image/upload/v1504870262/ep5ppflopethme9b5pqx.jpg" }

  it "allows navigation from the catalogue page to the product page" do
  visit catalogue_path(catalogue.id)

  click_link "View"

  expect(current_path).to eq(catalogue_product_path(catalogue, product))
  end


end
