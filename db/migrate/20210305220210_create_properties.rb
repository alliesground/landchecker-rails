class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.integer :council_property_number
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
