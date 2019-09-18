class DashboardsController < ApplicationController

  def index
    @users = policy_scope(User).all
    # @movies = Movie.where(nil)
    # @movies = @movies.where(genre: params[:genre]) if params[:genre]
    @tastes = Taste.joins(:movie)#.merge(@movies)

    @genres = ["All"]
    @genres += Movie.select('DISTINCT genre').all.map(&:genre).sort
  end
end
