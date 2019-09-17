class MoviesController < ApplicationController
  def index
    @movies = policy_scope(Movie)
    authorize @movie
  end

  def show
  end
end
