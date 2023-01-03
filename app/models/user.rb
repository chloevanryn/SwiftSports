class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, :sports, dependent: :destroy
  has_many :groups, through: :user_groups, dependent: :destroy
  has_many :ratings, through: :user_ratings, dependent: :destroy
end
