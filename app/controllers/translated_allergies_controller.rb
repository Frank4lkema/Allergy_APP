class TranslatedAllergiesController < ApplicationController
  def new
    puts "this works"
    result = TranslatedAllergy.translate(current_user)
    country = current_user.user_places.last.place.language
    allergy_id = current_user.user_allergies.last.allergy.id
    @translated_allergy = TranslatedAllergy.new(name: result, language: country, allergy_id: allergy_id)
    if @translated_allergy.save!
      redirect_to translated_allergy_path(@translated_allergy)
    else
      raise
    end
  end

  def show
    @translated_allergy = TranslatedAllergy.find(params[:id])
  end
end
