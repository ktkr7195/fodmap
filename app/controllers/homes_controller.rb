class HomesController < ApplicationController
  def index
    # サインインした時のみのif文
    @feed_items = current_user.feed
  end

  def about; end
end
