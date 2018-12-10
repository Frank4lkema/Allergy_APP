class UserAllergiesController < ApplicationController
  def new
    @user_place = params[:user_place_id]
    @user_allergy = UserAllergy.new
    @allergies = Allergy.all
  end

  def create
    @user_allergy = UserAllergy.new
    @user_allergy.allergy_id = Allergy.search_allergy(params[:allergy]).id
    @user_allergy.user_id = current_user.id

    if @user_allergy.save
      redirect_to new_user_place_user_allergy_translated_allergy_path(params[:user_place_id], @user_allergy)
    else
      render allergies_path
    end
  end
end

