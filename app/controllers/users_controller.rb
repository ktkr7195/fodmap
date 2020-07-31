class UsersController < ApplicationController
  before_action :user_signed_in?, only: %i[show following followers]
  def show
    @user = User.find_by(id: params[:id])
    @recipes = @user.recipes
    @recipe = current_user.recipes.build if user_signed_in?
  end

  def following
    @title = 'Following'
    @user  = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @title = 'Followers'
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follow'
  end
end
