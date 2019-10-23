# frozen_string_literal: true

class Ingredient < ApplicationRecord
  paginates_per 5
  has_many :measurements
  has_many :dishes, through: :measurements
  validates :name, presence: true
  validates :name, uniqueness: true
end
