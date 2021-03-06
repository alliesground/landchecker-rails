class Lga < ApplicationRecord
  has_many :properties
  has_many :addresses

  acts_as_copy_target
end
