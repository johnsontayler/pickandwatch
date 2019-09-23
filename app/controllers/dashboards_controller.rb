class DashboardsController < ApplicationController
  skip_after_action :verify_policy_scoped

  def index
    @users = policy_scope(User).all
    # @movies = Movie.where(nil)
    # @movies = @movies.where(genre: params[:genre]) if params[:genre]
    @tastes = Taste.all.where(watched: true)#.merge(@movies)

    @genres = ["All"]
    @genres += Movie.select('DISTINCT genre').all.map(&:genre).sort
    @wished = Taste.where(user: current_user, wish: true)
  end
end
