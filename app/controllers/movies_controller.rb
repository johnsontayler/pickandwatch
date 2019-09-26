# frozen_string_literal: true

class MoviesController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

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
        session[:shuffled_movies] = [] if params[:newshuffle] || session[:shuffled_movies].nil?
        session[:shuffled_movies] << params[:shuffled_id].to_i if params[:shuffled_id]

        @movie = current_user.sample_movie(session[:shuffled_movies])

        if @movie.try(:tastes)
          @like_taste = @movie.tastes.where(rating: true).count
          @pourcentage_of_likes = (@like_taste.fdiv(@movie.tastes.count) * 100).round(0)
        end

        @wished = current_user.tastes.where(movie: @movie, wish: true).first
      end
    end
  end

  def show
    @movie = Movie.find(params[:id])
    authorize @movie

    # like_taste is to count taste that where liked and display the number
    @like_taste = @movie.tastes.where(rating: true).count
    @dislike_taste = @movie.tastes.where(rating: false).count
    @total = @like_taste + @dislike_taste

    if @total = 0
      @pourcentage_of_likes = "NA"
    else
      @pourcentage_of_likes = (@like_taste.fdiv(@total) * 100).round(0)
      @pourcentage_of_likes = @pourcentage_of_likes.to_s + "%"
    end

    @wished = Taste.where(user: current_user, movie: @movie, wish: true)
    @watched_by = Taste.where(movie: @movie, watched: true)

    @movie_tastes = Taste.where(movie: @movie)
    @rated_tastes = Taste.where.not(rating: nil)
    @reviewed_by = @movie_tastes & @rated_tastes
  end
end
