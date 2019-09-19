class UsersController < ApplicationController
  def index
    if params[:query].present?
      @users = policy_scope(User)
                .where("first_name ILIKE ? OR last_name ILIKE ?", "#{params[:query]}%", "#{params[:query]}%")
    else
      @users = policy_scope(User).all
    end
  end

  def show
    @user = User.find(params[:id])
    authorize @user
    @watched = Taste.where(user: @user, watched: true)
    @followers = @user.followers
    @following = @user.followings
  end
end
