class Address < ApplicationRecord
  belongs_to :property
  belongs_to :lga, foreign_key: 'lga_code'
end
