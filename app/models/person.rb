# frozen_string_literal: true

class Person < ApplicationRecord
  paginates_per 5
  belongs_to :dish

  validates :name, presence: true
end
