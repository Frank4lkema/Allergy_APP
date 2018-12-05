class TranslatedAllergy < ApplicationRecord
  # Validations

  # Associations
  belongs_to :allergy



  def translate
    url = "https://translate.yandex.net/api/v1.5/tr.json/translate?key="
  end
end
