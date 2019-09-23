class DashboardsController < ApplicationController
  skip_after_action :verify_policy_scoped

  def index
    @users = policy_scope(User).all
    # @movies = Movie.where(nil)
    # @movies = @movies.where(genre: params[:genre]) if params[:genre]
    @tastes = current_user.followings.map { |u| u.tastes.joins(:movie) }.flatten

    @genres = ["All"]
    @genres += @tastes.map { |t| t.movie.genre }.uniq.sort
    @wished = Taste.where(user: current_user, wish: true)
  end
end
