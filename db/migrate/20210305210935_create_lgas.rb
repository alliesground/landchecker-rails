class CreateLgas < ActiveRecord::Migration[6.1]
  def change
    create_table :lgas, id: false do |t|
      t.primary_key :code
      t.string :name
      t.string :long_name

      t.timestamps
    end
  end
end
