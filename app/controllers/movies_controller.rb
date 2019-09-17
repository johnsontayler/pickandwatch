class MoviesController < ApplicationController
  def index
    @movies = policy_scope(Movie).all
  end

  def show
  end
end
