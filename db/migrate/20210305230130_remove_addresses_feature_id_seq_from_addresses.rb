class RemoveAddressesFeatureIdSeqFromAddresses < ActiveRecord::Migration[6.1]
  def change
    ActiveRecord::Base.connection.execute "DROP SEQUENCE addresses_feature_id_seq CASCADE"
  end
end
