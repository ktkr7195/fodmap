class HomesController < ApplicationController
  def index
    if user_signed_in?
      #   @feed_items = current_user.feed.page(params[:page]).per(9)
      # else
      #   @recipes = Recipe.all.order('created_at DESC')
      # end
      @recipes = Recipe.all.includes(:user).page(params[:page]).per(9)
    end
  end

  def about; end
end
