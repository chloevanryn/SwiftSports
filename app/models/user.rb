class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :events, dependent: :destroy
  has_many :participating_users
  has_many :events_as_participant, through: :participating_users, source: :event

  has_many :groups, dependent: :destroy
  has_many :user_groups
  has_many :groups_as_user, through: :user_groups, source: :groups

  has_many :user_sports, dependent: :destroy
  has_many :levels, through: :user_sports
  has_many :sports, through: :user_sports

  has_many :ratings, dependent: :destroy
  has_many :user_ratings
  has_many :ratings_as_user, through: :user_ratings, source: :ratings

  has_one_attached :photo
end
