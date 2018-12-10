require 'open-uri'
class TranslatedAllergy < ApplicationRecord
  # Validations

  # Associations
  belongs_to :allergy
  def self.translate(current_user)
    base_url = "https://translate.yandex.net/api/v1.5/tr.json/translate?key="
    api_key = ENV['TRANSLATE_KEY']
    language_code = current_user.user_places.last.place.language_code
    allergy = current_user.user_allergies.last.allergy.name
    url = "#{base_url}#{api_key}&text=#{allergy}&lang=en-#{language_code}"
    data = JSON.parse(open(url).read)
    result = data["text"][0]
    country = current_user.user_places.last.place.language
    allergy_id = current_user.user_allergies.last.allergy.id
    TranslatedAllergy.new(name: result, language: country, allergy_id: allergy_id)
  end
end
