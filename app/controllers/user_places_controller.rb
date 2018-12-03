class UserPlacesController < ApplicationController

  def create
    @user_place = UserPlace.new
    place = Place.search_place(params[:store])
    @user_place.place_id = place.id
    @user_place.user_id = current_user.id
    @user_place.save!
    raise
  end
end
