class Event < ApplicationRecord
  has_many :participating_users

  belongs_to :user
  belongs_to :sport
  belongs_to :level

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
