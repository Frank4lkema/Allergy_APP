class UserAllergiesController < ApplicationController
  def create
    @user_allergy = UserAllergy.new
    @user_allergy.allergy_id = Allergy.search_allergy(params[:allergy]).id
    @user_allergy.user_id = current_user.id

    if @user_allergy.save
      redirect_to  new_translated_allergy_path
    else
      render allergies_path
    end
  end
end


