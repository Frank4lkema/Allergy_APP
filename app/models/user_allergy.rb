class UserAllergy < ApplicationRecord
  # Validations

  # Associations
  belongs_to :user
  belongs_to :allergy
end
