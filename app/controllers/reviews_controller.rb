class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!
  def new

  end

  def create

  end

  def destroy
  end

  def search_movie
    if params[:query].present?
      sql_query = "title ILIKE :query OR director ILIKE :query"
      @movies = policy_scope(Movie).where(sql_query, query: "%#{params[:query]}%")
    end
  end

  def movie_db?(results)
    results.count.positive?
  end
end
