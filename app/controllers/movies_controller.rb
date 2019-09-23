class MoviesController < ApplicationController

  def index
    # respond_to
    #     if params[:query].present?
    #   @users = policy_scope(User)
    #             .where("first_name ILIKE ? OR last_name ILIKE ?", "#{params[:query]}%", "#{params[:query]}%")
    # else
    #   @users = policy_scope(User).all
    # end

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
    @like_taste = @movie.tastes.where(rating: true)

    @wished = Taste.where(user: current_user, movie: @movie, wish: true)
    @watched_by = Taste.where(movie: @movie, watched: true)
  end
end
