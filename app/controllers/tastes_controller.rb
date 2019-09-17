class TastesController < ApplicationController
  def create
    @taste = current_user.tastes.new(taste_params)
    if @taste.save
      # …
  end

  def destroy
  end

  def taste_params
    # imdb_id, review
  end
end
