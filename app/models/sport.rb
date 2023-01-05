class Sport < ApplicationRecord
  has_many :events

  has_many :user_sports, dependent: :destroy
  has_many :users, through: :user_sports

  has_one_attached :photo
end
