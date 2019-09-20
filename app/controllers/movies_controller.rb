class MoviesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @movies = policy_scope(Movie).all
    @movie = @movies.first
  end

  def show
    @movie = Movie.find(params[:id])
    authorize @movie
    @user_taste = Taste.where(user: current_user, movie: @movie)
    @watched_by = Taste.where(movie: @movie, watched: true)
  end
end
