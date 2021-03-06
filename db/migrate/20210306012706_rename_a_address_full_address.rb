class RenameAAddressFullAddress < ActiveRecord::Migration[6.1]
  def change
    rename_column :addresses, :fulladdress, :full_address
  end
end
