# frozen_string_literal: true

class Person < ApplicationRecord
  belongs_to :dish

  validates :name, presence: true
end
