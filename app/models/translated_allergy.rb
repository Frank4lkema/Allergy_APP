require 'open-uri'
class TranslatedAllergy < ApplicationRecord
  # Validations

  # Associations
  belongs_to :allergy
  def translate(current_user)
    puts "works "
    base_url = "https://translate.yandex.net/api/v1.5/tr.json/translate?key="
    api_key = ENV['TRANSLATE_KEY']
    language_code = current_user.user_places.last.place.language_code
    allergy = current_user.user_allergies.last.allergy.name
    url = "#{base_url}?key=#{api_key}&text=#{allergy}&lang=#{language_code}"
    puts url
    puts url
    puts url
    puts "this works"
    binding.pry
  end
end
