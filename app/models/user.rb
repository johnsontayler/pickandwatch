class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tastes
  has_many :movies, through: :tastes

  has_many :follows, foreign_key: :follower_id
  has_many :followings, through: :follows, source: :followed

  has_many :followed, foreign_key: :followed_id, class_name: 'Follow'
  has_many :followers, through: :followed, source: :follower

  belongs_to :friend, class_name: 'User', foreign_key: :shuffle_friend, required: false

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates_format_of :email, with:
                      /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create
  validates :photo, presence: true

  def followed_by?(current_user)
    user = self
    current_user.follows.exists?(followed: user)
  end

  def sample_movie(shuffled_movies)
    friend_watches = followings.map(&:tastes).flatten.map(&:movie_id)
    my_watches = tastes.watched.map(&:movie_id)

    movies = if friend
      my_friends_watches = friend.followings.map(&:tastes).flatten.map(&:movie_id)
      (friend_watches | my_friends_watches) - my_watches
    else
      (friend_watches - my_watches).uniq
    end

    movie_id = (movies - shuffled_movies).sample
    movie_id ? Movie.find(movie_id) : nil
  end
end
