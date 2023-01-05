class Sport < ApplicationRecord
  has_many :events

  has_many :user_sports, dependent: :destroy
  has_many :users, through: :user_sports

  SPORTS = ['Football', 'Basketball', 'Volleyball', 'Tennis', 'Padel', 'Jogging', 'Yoga', 'Rugby', 'Hockey', 'Baseball', 'Water polo', 'Cricket']
end
