class RemoveLgasCodeSeqFromLgas < ActiveRecord::Migration[6.1]
  def change
    ActiveRecord::Base.connection.execute "DROP SEQUENCE lgas_code_seq CASCADE"
  end
end
