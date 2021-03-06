class Property < ApplicationRecord
  belongs_to :lga, foreign_key: 'lga_code'
  has_one :address

  acts_as_copy_target
end
