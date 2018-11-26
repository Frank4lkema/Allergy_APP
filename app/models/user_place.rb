class UserPlace < ApplicationRecord
  # Validations

  # Associations
  belongs_to :user
  belongs_to :place
end
