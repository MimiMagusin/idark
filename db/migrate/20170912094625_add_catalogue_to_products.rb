class AddCatalogueToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :catalogue, foreign_key: true
  end
end
