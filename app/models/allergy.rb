class Allergy < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true
  validates :allergy_information, presence: true

  # Associations
  has_many :user_allergies
end
