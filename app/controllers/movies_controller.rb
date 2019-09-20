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
    @movies_shuffled = [] if @movies_shuffled.count == @movies.count
    @movies -= @movies_shuffled if @movies_shuffled.present?
    @movie = @movies.sample
  end

  def show
    @movie = Movie.find(params[:id])
    authorize @movie
    @user_taste = Taste.where(user: current_user, movie: @movie)
    @watched_by = Taste.where(movie: @movie, watched: true)
  end
end
