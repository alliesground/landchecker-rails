class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses, id: false do |t|
      t.primary_key :feature_id
      t.references :property, null: false, foreign_key: true
      t.string :fulladdress
      t.string :state
      t.integer :postcode

      t.timestamps
    end
  end
end
