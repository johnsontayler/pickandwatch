class TastesController < ApplicationController
  def new
    @taste = Taste.new
    authorize @taste
  end

  def create
    @movie = Movie.find_by(imdb_id: taste_params[:imdb_id])

    if @movie
      @taste = current_user.tastes.where(movie_id: @movie.id).first_or_create
    else
      @taste = current_user.tastes.create(imdb_id: taste_params[:imdb_id])
    end

    authorize @taste
    @taste.watched = true
    if @taste.update(taste_params)
      redirect_to dashboards_path
    else
      render :new
    end
  end

  def watch
    @movie = Movie.find(params[:id])
    @taste = current_user.tastes.where(movie_id: @movie.id).first_or_create(imdb_id: @movie.imdb_id)
    @taste.update!(watched: true, wish: false)
    authorize @taste
    redirect_to user_path(current_user)
  end

  def bookmark
    @movie = Movie.find(params[:id])
    @taste = current_user.tastes.where(movie_id: @movie.id).first_or_create(imdb_id: @movie.imdb_id)
    @taste.update!(wish: !@taste.wish)
    authorize @taste

    redirect_to movies_path
  end

  def like
    @movie = Movie.find(params[:id])
    @taste = current_user.tastes.where(movie_id: @movie.id).first_or_create(imdb_id: @movie.imdb_id)
    @taste.update!(rating: true, watched: true)
    authorize @taste

    redirect_to movies_path
  end

  def dislike
    @movie = Movie.find(params[:id])
    @taste = current_user.tastes.where(movie_id: @movie.id).first_or_create(imdb_id: @movie.imdb_id)
    @taste.update!(rating: false, watched: true)
    authorize @taste

    redirect_to movies_path
  end

  def destroy
  end

  private

  def taste_params
    params.require(:taste).permit(:imdb_id, :review, :rating)
  end
end
