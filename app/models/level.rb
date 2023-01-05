class Level < ApplicationRecord
  has_many :sports, through: :events
  has_many :events
  has_many :user_sports
end
