class MoviesController < ApplicationController
  def index
    @movies = policy_scope(Movie).all
  end

  def show
    @movie = Movie.find(params[:id])
    authorize @movie
    @user_taste = Taste.where(user: current_user, movie: @movie)
    @watched_by = Taste.where(movie: @movie, watched: true)
  end
end
