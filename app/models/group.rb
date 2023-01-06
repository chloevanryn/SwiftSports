class Group < ApplicationRecord
  # after_create :create_chatroom

  belongs_to :user

  has_many :users, through: :user_groups
  # has_many :chatrooms

  has_one_attached :photo
  # def create_chatroom
  #   @chatroom = Chatroom.new(name: self.title)
  #   @chatroom.event = self
  #   @chatroom.save!
  # end
end
