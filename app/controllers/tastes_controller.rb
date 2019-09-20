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
    @taste = current_user.tastes.where(movie_id: params[:id]).first_or_create
    @taste.update!(watched: true, wish: false)
    authorize @taste
  end

  def bookmark
    @taste = current_user.tastes.where(movie_id: params[:id]).first_or_create
    @taste.update!(wish: !@taste.wish)
    authorize @taste
  end

  def destroy
  end

  private

  def taste_params
    params.require(:taste).permit(:imdb_id, :review, :rating)
  end
end
