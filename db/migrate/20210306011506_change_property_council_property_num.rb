class ChangePropertyCouncilPropertyNum < ActiveRecord::Migration[6.1]
  def up
    change_column :properties, :council_property_number, :bigint
  end

  def down
    change_column :properties, :lga_code, :integer
  end
end
