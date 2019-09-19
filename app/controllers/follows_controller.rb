class FollowsController < ApplicationController
  def create
    @followed = User.find(params[:id])
    @follow = current_user.follows.create!(followed: @followed)
    authorize @follow
    redirect_to user_path(@followed)
  end

  def destroy
    @followed = User.find(params[:id])
    @follow = Follow.where(followed: @followed, follower: current_user)
    authorize @follow
    @follow.destroy_all
    redirect_to user_path(@followed)
  end

  private

  def follow_params
    params.require(:follow).permit(:followed, :follower)
  end
end
