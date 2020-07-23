class HomesController < ApplicationController  
  def index
    @recipes = current_user.recipes if user_signed_in?
  end

  def about; end
end
