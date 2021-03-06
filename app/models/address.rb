class Address < ApplicationRecord
  belongs_to :property
  belongs_to :lga, foreign_key: 'lga_code'

  acts_as_copy_target
end
