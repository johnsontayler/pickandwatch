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
    @user.update(shuffle_friend: nil)
    authorize @user
  end

  def update
    @user = current_user
    @user.update(shuffle_friend: user_params[:shuffle_friend])
    authorize @user
    redirect_to movies_path
  end

  def show
    @user = User.find(params[:id])
    authorize @user
    @watched = Taste.where(user: @user, watched: true)
    @followers = @user.followers
    @following = @user.followings
  end

  private

  def user_params
    params.require(:user).permit(:shuffle_friend)
  end
end
