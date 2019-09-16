class Movie < ApplicationRecord
  has_many :tastes

  validates :title, presence: true
  validates :photo, presence: true
  validates :genre, presence: true
  validates :description, presence: true
  validates :year, presence: true
  validates :duration, presence: true
  validates :director, presence: true
  validates :imdb_rating, presence: true
end
