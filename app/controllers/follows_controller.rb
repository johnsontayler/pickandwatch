class FollowsController < ApplicationController
  def create
    @followed = User.find(params[:id])
    @follower = current_user
    @follow = Follow.new(followed: @followed, follower: @follower)
    authorize @follow
    @follow.save
    redirect_to user_path(@followed)
  end

  def destroy
  end

  private

  def follow_params
    params.require(:follow).permit(:followed, :follower)
  end
end
