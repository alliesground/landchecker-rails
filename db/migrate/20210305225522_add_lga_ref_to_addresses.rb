class AddLgaRefToAddresses < ActiveRecord::Migration[6.1]
  def change
    add_column :addresses, :lga_code, :bigint

    add_foreign_key :addresses, :lgas, column: :lga_code, primary_key: "code"
  end
end
