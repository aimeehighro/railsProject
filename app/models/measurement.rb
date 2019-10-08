class Measurement < ApplicationRecord
  belongs_to :dish
  belongs_to :ingredient

  validates :amount, presence: true
end
