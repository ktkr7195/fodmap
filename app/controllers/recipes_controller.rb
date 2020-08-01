class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]
  before_action :user_signed_in?, only: %i[create destroy]
  before_action :correct_user, only: :destroy

  def index
    if user_signed_in?
      @recipes = current_user.recipes 
    else
      @recipes = Recipe.all.order("created_at DESC")  
    end  
  end

  def show
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
      # redirect_back(fallback_location: current_user)
      render :new
    end
  end

  def edit
  end

  def update
		if @recipe.update(recipe_params)
			redirect_to @recipe
		else
			render 'edit'
		end
	end

  def destroy
    p "デストロイに入ってる？"    
    @recipe.destroy
		redirect_to root_path, notice: "レシピを削除しました！"
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :content, :picture)
  end

  def correct_user
    @recipe = current_user.recipes.find_by(id: params[:id])
    redirect_to root_url if @recipe.nil?
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
end
