class FollowsController < ApplicationController
  def create
    @followed = User.find(params[:user_id])
    @follow = current_user.follows.create!(followed: @followed)
    authorize @follow
    redirect_to user_path(@followed)
  end

  def destroy
  end

  private

  def follow_params
    params.require(:follow).permit(:followed, :follower)
  end
end
