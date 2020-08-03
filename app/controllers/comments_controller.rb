class CommentsController < ApplicationController
  before_action :user_signed_in?

  def create
    recipe = Recipe.find(params[:recipe_id])
    @comment = recipe.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      flash[:success] = 'コメントしました'
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path, notice: '作れなかった')
    end
  end

  def destroy
    Comment.find_by(id: params[:id], recipe_id: params[:recipe_id]).destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
