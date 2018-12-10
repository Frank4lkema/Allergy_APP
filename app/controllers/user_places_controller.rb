class UserPlacesController < ApplicationController
  def create
    @user_place = UserPlace.new
    place = Place.search_place(params[:country])
    @user_place.place_id = place.id
    @user_place.user_id = current_user.id

    if @user_place.save
      redirect_to new_user_place_user_allergy_path(@user_place)
    else
      render root_path
    end
  end
end
