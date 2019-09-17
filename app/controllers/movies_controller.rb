class MoviesController < ApplicationController
  def index
    @movies = policy_scope(Movie).all
  end

  def show
    @movie = Movie.find(params[:id])
    authorize @movie
  end
end
