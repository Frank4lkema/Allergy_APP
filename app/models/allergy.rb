class Allergy < ApplicationRecord

  searchkick
  # Validations
  validates :name, presence: true, uniqueness: true
  # validates :allergy_information, presence: true

  # Associations
  has_many :user_allergies


  def self.search_allergy(allergy)
    result = Allergy.search(allergy).response["hits"]["hits"][0]["_id"].to_i
    Allergy.find(result)
  end
end
