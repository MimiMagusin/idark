class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :city
      t.string :address
      t.string :postal_code
      t.string :billing_info

      t.timestamps
    end
  end
end
