class Event < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:title, :location]

  after_create :add_owner_as_participant
  after_create :create_chatroom

  has_many :participating_users
  has_one :chatroom, dependent: :destroy

  belongs_to :user
  belongs_to :sport
  belongs_to :level

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  private

  def add_owner_as_participant
    @participating_user = ParticipatingUser.create(event: self, user: self.user)
  end

  def create_chatroom
    @chatroom = Chatroom.new(name: self.title)
    @chatroom.event = self
    @chatroom.save!
  end
end
