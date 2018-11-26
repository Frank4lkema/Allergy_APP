class Allergy < ApplicationRecord
  # Validations

  # Associations
  has_many :user_allergies
end
