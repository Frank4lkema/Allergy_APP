class UserPlacesController < ApplicationController

  def create
    @user_place = UserPlace.new
    place = Place.search(params[:store])
    @user_place.place_id = place
    @user_place.user_id = user
    raise
  end
end
