class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    authorize @user
    @watched = Taste.where(user: @user, watched: true)
    @followers = @user.followers
    @following = @user.followings
  end
end
