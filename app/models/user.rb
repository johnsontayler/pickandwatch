class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tastes

  has_many :follows, foreign_key: :follower_id
  has_many :followings, through: :follows, source: :followed

  has_many :followed, foreign_key: :followed_id, class_name: 'Follow'
  has_many :followers, through: :followed, source: :follower

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates_format_of :email, with:
                      /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create
  validates :photo, presence: true
end
