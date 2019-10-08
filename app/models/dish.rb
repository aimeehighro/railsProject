class Dish < ApplicationRecord
  has_many :people
  has_many :measurements
  has_many :ingredients, through: :measurements

  validates :name, :description, presence: true
  validates :name, uniqueness: true
end
