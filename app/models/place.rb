class Place < ApplicationRecord
  #search option
  searchkick

  # Validations
  validates :country, presence: true
  validates :language, presence: true

  # Associations
  has_many :user_places

  def self.search_place(country)
    result = Place.search(country).response["hits"]["hits"][0]["_id"].to_i
    Place.find(result)
  end
end
