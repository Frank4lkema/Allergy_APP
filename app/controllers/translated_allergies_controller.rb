class TranslatedAllergiesController < ApplicationController

  def new
    puts "this works"
    result = translate(current_user)
    raise
  end
end
