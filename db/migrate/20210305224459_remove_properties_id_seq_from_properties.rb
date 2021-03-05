class RemovePropertiesIdSeqFromProperties < ActiveRecord::Migration[6.1]
  def change
    ActiveRecord::Base.connection.execute "DROP SEQUENCE properties_id_seq CASCADE"
  end
end
