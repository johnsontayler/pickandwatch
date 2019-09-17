class Taste < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  attr_accessor :imdb_id
end
