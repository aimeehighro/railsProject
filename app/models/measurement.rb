# frozen_string_literal: true

class Measurement < ApplicationRecord
  paginates_per 5
  belongs_to :dish
  belongs_to :ingredient

  validates :amount, presence: true
end
