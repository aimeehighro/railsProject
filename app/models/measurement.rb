# frozen_string_literal: true

class Measurement < ApplicationRecord
  paginates_per 20
  belongs_to :dish
  belongs_to :ingredient

  validates :amount, presence: true

  def self.search(search)
    # Title is for the above case, the OP incorrectly had 'name'
    where('amount LIKE ?', "%#{search}%")
  end
end
