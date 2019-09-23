class MoviesController < ApplicationController

  def index
    unless params[:movies_shuffled_ids].nil?
      @movies_shuffled = [] if @movies_shuffled.nil?
      params[:movies_shuffled_ids].each do |movie_shuffled_id|
        current_movie = Movie.find(movie_shuffled_id)
        @movies_shuffled << current_movie
      end
    end

    @movies = policy_scope(Movie).all
    @movies_shuffled = [] if @movies_shuffled&.count == @movies.count
    @movies -= @movies_shuffled if @movies_shuffled.present?
    @movie = @movies.sample

    @wished = Taste.where(user: current_user, movie: @movie, wish: true)
  end

  def show
    @movie = Movie.find(params[:id])
    authorize @movie

    # like_taste is to count taste that where liked and display the number
    @like_taste = @movie.tastes.where(rating: true).count

    if @movie.tastes
      @pourcentage_of_likes = (@like_taste.fdiv(@movie.tastes.count) * 100).round(0)
    end

    @wished = Taste.where(user: current_user, movie: @movie, wish: true)
    @watched_by = Taste.where(movie: @movie, watched: true)
  end
end
