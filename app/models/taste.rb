class Taste < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  attr_accessor :imdb_id

  before_validation :link_movie, on: :create

  validates :user_id, uniqueness: { scope: :movie_id, message: "has already rated" }

  def link_movie
    self.movie = Movie.where(imdb_id: imdb_id).first_or_create
  end
end
