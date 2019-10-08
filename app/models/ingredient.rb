# frozen_string_literal: true

class Ingredient < ApplicationRecord
  has_many :measurements
  has_many :dishes, through: :measurements
  validates :name, presence: true
  validates :name, uniqueness: true
end
