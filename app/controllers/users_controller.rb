class UsersController < ApplicationController
  def index
    if params[:query].present?
      @users = policy_scope(User)
                .where("first_name ILIKE ? OR last_name ILIKE ?", "#{params[:query]}%", "#{params[:query]}%")
    else
      @users = policy_scope(User).all
    end
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    @user.update(shuffle_friend: user_params[:shuffle_friend])
    raise
  end

  def show
    @user = User.find(params[:id])
    authorize @user
    @watched = Taste.where(user: @user, watched: true)
    @followers = @user.followers
    @following = @user.follows
  end

  private

  def user_params
    params.require(:user).permit(:shuffle_friend)
  end
end
