class AddFkColumnToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :lga_code, :integer

    add_foreign_key :properties, :lgas, column: :lga_code, primary_key: "code"
  end
end
