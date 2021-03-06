class Lga < ApplicationRecord
  has_many :properties, foreign_key: :lga_code
  has_many :addresses, foreign_key: :lga_code

  acts_as_copy_target
end
