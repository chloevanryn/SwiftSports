class Event < ApplicationRecord
  belongs_to :user
  belongs_to :sport
  belongs_to :level
end
