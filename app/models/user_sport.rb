class UserSport < ApplicationRecord
  SPORTS = ['Football', 'Basketball', 'Volleyball', 'Tennis', 'Padel', 'Jogging', 'Yoga', 'Rugby', 'Hockey', 'Baseball', 'Water polo', 'Cricket']

  belongs_to :user
  belongs_to :sport

  validates :sport, uniqueness: {scope: :sport, message: "already added"}

end
