require 'open-uri'
class TranslatedAllergy < ApplicationRecord
  # Validations

  # Associations
  belongs_to :allergy

  def self.translate(current_user)
    user_allergy = UserAllergy.find(current_user[:user_allergy_id])
    user_place = UserPlace.find(current_user[:user_place_id])
    language_code = user_place.place.language_code
    allergy = user_allergy.allergy.name
    result = get_data(language_code, allergy)
    country = user_place.place.language
    allergy_id = user_allergy.allergy.id
    TranslatedAllergy.new(name: result, language: country, allergy_id: allergy_id)
  end

  def self.get_data(language_code, allergy)
    base_url = "https://translate.yandex.net/api/v1.5/tr.json/translate?key="
    api_key = ENV['TRANSLATE_KEY']
    url = "#{base_url}#{api_key}&text=#{allergy}&lang=en-#{language_code}"
    data = JSON.parse(open(url).read)
    data["text"][0]
  end
end
