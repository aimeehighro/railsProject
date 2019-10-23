# frozen_string_literal: true

class Dish < ApplicationRecord
  paginates_per 5
  has_many :people
  has_many :measurements
  has_many :ingredients, through: :measurements

  validates :name, :description, presence: true
  validates :name, uniqueness: true

  def self.search(search)
    # Title is for the above case, the OP incorrectly had 'name'
    where('name LIKE ?', "%#{search}%")
  end
end
