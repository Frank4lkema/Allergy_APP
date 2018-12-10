class TranslatedAllergiesController < ApplicationController
  def new
    @translated_allergy = TranslatedAllergy.translate(current_user)
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
