require 'rails_helper'

describe "Current user viewing the list of products" do


  let(:catalogue) { create :catalogue }
  let(:another_catalogue) { create :catalogue }

  let!(:product1) { create :product, name: "Name 1", catalogue: catalogue, image:"http://res.cloudinary.com/dnxpj95us/image/upload/v1504870262/ep5ppflopethme9b5pqx.jpg"}
  let!(:product2) { create :product, name: "Name 2", catalogue: catalogue, image:"http://res.cloudinary.com/dnxpj95us/image/upload/v1504870262/ep5ppflopethme9b5pqx.jpg"}
  let!(:product3) { create :product, name: "Name 3", catalogue: catalogue, image:"http://res.cloudinary.com/dnxpj95us/image/upload/v1504870262/ep5ppflopethme9b5pqx.jpg"}
  let!(:product4) { create :product, name: "Name 4", catalogue: another_catalogue, image:"http://res.cloudinary.com/dnxpj95us/image/upload/v1504870262/ep5ppflopethme9b5pqx.jpg"}

  it "shows all his products" do
    visit catalogue_path(catalogue.id)

    expect(page).to have_text("Name 1")
    expect(page).to have_text("Name 2")
    expect(page).to have_text("Name 3")
  end
end
