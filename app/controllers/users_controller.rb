class UsersController < ApplicationController



  def search
    @user = current_user
  end
end
