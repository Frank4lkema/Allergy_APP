class TranslatedAllergiesController < ApplicationController

  def new
    puts "this works"
    TranslatedAllergy.translate(current_user)
    raise
  end
end
