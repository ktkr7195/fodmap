class RecipesController < ApplicationController
  before_action :user_signed_in?, only: %i[create destroy]
  before_action :correct_user, only: :destroy

  def index
    @recipes = current_user.recipes
  end

  def new
    @recipe = current_user.recipes.build if user_signed_in?
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)
    if @recipe.save
      flash[:success] = 'Recipe created!'
      @recipes = current_user.recipes
      render :index
    else
      logger.debug 'ここはバリデーションがはじかれた場合'
      logger.debug current_user.id
      flash[:success] = 'Recipe NOT created!'
      # redirect_back(fallback_location: current_user)
      render :new
    end
  end

  def destroy
    @recipe.destroy
    flash[:success] = 'Micropost deleted'
    redirect_back(fallback_location: root_url)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:content, :picture)
  end

  def correct_user
    @recipe = current_user.recipes.find_by(id: params[:id])
    redirect_to root_url if @recipe.nil?
  end
end
