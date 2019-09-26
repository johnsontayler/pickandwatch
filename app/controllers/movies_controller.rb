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
    @current_user_follows = current_user.followings
    @follows_movies = []

    if current_user.shuffle_friend.nil?
      @movies.each do |movie|
        @current_user_follows.each do |user|
          unless movie.tastes.exists?(user: current_user, watched: true)
            @follows_movies << movie if movie.users.exists?(user.id)
          end
        end
      end
    else
      @friend = User.find(current_user.shuffle_friend)
      @friend_follows = @friend.followings
      @combined_follows = @current_user_follows | @friend_follows
      @movies.each do |movie|
        @combined_follows.each do |user|
          unless movie.tastes.exists?(user: current_user, watched: true)
            @follows_movies << movie if movie.users.exists?(user.id)
          end
        end
      end
    end

    @follows_movies -= @movies_shuffled if @movies_shuffled.present?
    @movies_shuffled = [] if @movies_shuffled&.count == @follows_movies.count

    @movie = @follows_movies.sample

    unless @movie.nil?
      if @movie.tastes
        @like_taste = @movie.tastes.where(rating: true).count
        @pourcentage_of_likes = (@like_taste.fdiv(@movie.tastes.count) * 100).round(0)
      end
    end

    @wished = Taste.where(user: current_user, movie: @movie, wish: true)
        end
      end

    @user = current_user
    @shuffle_friend = User.find(@user.shuffle_friend) if @user.shuffle_friend.present?

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
