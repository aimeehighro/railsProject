# frozen_string_literal: true

class Person < ApplicationRecord
  paginates_per 20
  belongs_to :dish

  validates :name, presence: true

  def self.search(search)
    # Title is for the above case, the OP incorrectly had 'name'
    where('name LIKE ?', "%#{search}%")
  end
end
