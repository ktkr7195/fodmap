class HomesController < ApplicationController
  def index
    if user_signed_in?
      @feed_items = current_user.feed 
    else
      @recipes = Recipe.all.order("created_at DESC")  
    end       
  end

  def about; end
end
