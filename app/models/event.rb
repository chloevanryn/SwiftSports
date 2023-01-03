class Event < ApplicationRecord
  has_many :participating_users

  belongs_to :user
  belongs_to :sport
end
