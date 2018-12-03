class Place < ApplicationRecord
  #search option
  searchkick

  # Validations
  validates :country, presence: true
  validates :language, presence: true

  # Associations
  has_many :user_places


  def self.search(country)
    Place.search(country)
  end
end
