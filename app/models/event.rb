class Event < ApplicationRecord
  after_create :add_owner_as_participant

  has_many :participating_users
  has_many :chatrooms

  belongs_to :user
  belongs_to :sport
  belongs_to :level

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  private

  def add_owner_as_participant
    @participating_user = ParticipatingUser.create(event: self, user: self.user)
  end
end
