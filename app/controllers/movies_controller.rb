class MoviesController < ApplicationController
  def index
    @movies = policy_scope(Movie).all
  end

  def show
    @movie = Movie.find(params[:id])
    authorize @movie
    @taste = Taste.where(user: current_user, movie: @movie)
  end
end
