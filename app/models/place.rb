class Place < ApplicationRecord
  # Validations

  # Associations
  has_many :user_places
end
