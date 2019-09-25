class MoviesController < ApplicationController

  def index
    respond_to do |format|
        format.json do
          if params[:query].present?
            @movies = policy_scope(Movie)
                .where("title ILIKE ? ", "#{params[:query]}%")
                .limit(10)
          else
            @movies = []
          end
        end
        format.html do
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
      end
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
