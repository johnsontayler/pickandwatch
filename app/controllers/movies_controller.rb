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

    @follows = current_user.followings
    @friend_movies = []
    @movies.each do |movie|
      @follows.each do |user|
        unless movie.tastes.exists?(user: current_user, watched: true)
          @friend_movies << movie if movie.users.exists?(user.id)
        end
      end
    end

    @movies_shuffled = [] if @movies_shuffled&.count == @friend_movies.count
    @friend_movies -= @movies_shuffled if @movies_shuffled.present?
    @movie = @friend_movies.sample

    unless @movie.nil?
      if @movie.tastes
        @like_taste = @movie.tastes.where(rating: true).count
        @pourcentage_of_likes = (@like_taste.fdiv(@movie.tastes.count) * 100).round(0)
      end
    end

    @wished = Taste.where(user: current_user, movie: @movie, wish: true)
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
    @reviewed_by = Taste.where(movie: @movie, rating: true || false)
  end
end

#  def add_friend(friend_id)
#    @movies = policy_scope(Movie).all
#    @friend = User.find(friend_id)
#   @current_user_follows = current_user.followings
=begin    @add_friend_follows = @friend.followings

    @combined_follows = @current_user_follows | @add_friend_follows

    @friend_movies = []

    @movies.each do |movie|
      @combined_follows.each do |user|
        unless movie.tastes.exists?(user: current_user, watched: true)
          @friend_movies << movie if movie.users.exists?(user.id)
        end
      end
    end
    @friend_movies
  end=end
end
