class UserSport < ApplicationRecord
  belongs_to :user
  belongs_to :sport

  validates :sport, uniqueness: {scope: :sport, message: "already added"}
end
