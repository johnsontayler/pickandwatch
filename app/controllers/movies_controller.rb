class MoviesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @movies = policy_scope(Movie).all
  end

  def show
    @movie = Movie.find(params[:id])
    authorize @movie

    # like_taste is to count taste that where liked and display the number
    @like_taste = @movie.tastes.where(rating: true)

    @user_taste = Taste.where(user: current_user, movie: @movie)
    @watched_by = Taste.where(movie: @movie, watched: true)
  end
end
