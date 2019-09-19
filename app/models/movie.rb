require 'json'
require 'open-uri'

class Movie < ApplicationRecord
  has_many :tastes
  has_many :users, through: :tastes

  before_validation :fetch_infos_imdb, on: :create

  validates :title, presence: true
  validates :photo, presence: true
  validates :genre, presence: true
  validates :description, presence: true
  validates :year, presence: true
  validates :duration, presence: true
  validates :director, presence: true
  validates :imdb_rating, presence: true
  validates :imdb_id, presence: true


  def fetch_infos_imdb
    url = "http://www.omdbapi.com/?i=#{imdb_id}&apikey=a1a4bf37"
    @movie = JSON.parse(open(url).read)
    self.title = @movie["Title"]
    self.photo = @movie["Poster"]
    # Genre in the API is a string with many genres.
    # We will just capture de first genre to help for the filters in the feed
    self.genre = @movie["Genre"].tr(',', '').split.first
    self.description = @movie["Plot"]
    self.year = @movie["Released"]
    self.duration = @movie["Runtime"]
    self.director = @movie["Director"]
    self.award = @movie["Awards"]
    self.actor = @movie["Actors"]
    self.imdb_rating =@movie["imdbRating"]
  end
end
