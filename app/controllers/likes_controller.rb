class LikesController < ApplicationController
  def create
    @like = Like.new(
      user_id:@current_user.id,
      record_id:params[:record_id]
    )
    @like.save
    redirect_to("/posts/#{params[:record_id]}")
  end

  def destroy
    @like = Like.find_by(
      user_id:@current_user.id,
      post_id:params[:record_id]
    )
    @like.destroy
    redirect_to("/posts/#{params[:record_id]}")
  end

end
