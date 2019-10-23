# frozen_string_literal: true

class Ingredient < ApplicationRecord
  paginates_per 20
  has_many :measurements
  has_many :dishes, through: :measurements
  validates :name, presence: true
  validates :name, uniqueness: true

  def self.search(search)
    # Title is for the above case, the OP incorrectly had 'name'
    where('name LIKE ?', "%#{search}%")
  end
end
