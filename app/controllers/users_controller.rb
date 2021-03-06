class UsersController < ApplicationController
  def index
    respond_to do |format|
      format.json do
        if params[:query].present?
          @users = policy_scope(User)
                    .where("first_name ILIKE ? OR last_name ILIKE ?", "#{params[:query]}%", "#{params[:query]}%")
        else
          @users = policy_scope(User).all
        end
      end
    end
  end

  def edit
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
    @tastes_w_ratings = Taste.where.not(rating: nil)
    @tastes_w_reviews = Taste.where.not(review: nil)
    @tastes_ratings_reviews = @tastes_w_ratings | @tastes_w_reviews
    @user_tastes = Taste.where(user: @user, watched: true)
    @watched = @user_tastes & @tastes_ratings_reviews
    @liked = Taste.where(user: @user, rating: true)
    @wishlist = Taste.where(user: @user, wish: true)
    @followers = @user.followers
    @following = @user.followings
  end

  private

  def user_params
    params.require(:user).permit(:shuffle_friend)
  end
end
