class ChangePropertiesLgaCode < ActiveRecord::Migration[6.1]
  def up
    change_column :properties, :lga_code, :bigint
  end

  def down
    change_column :properties, :lga_code, :integer
  end
end
