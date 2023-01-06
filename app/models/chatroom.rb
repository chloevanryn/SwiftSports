class Chatroom < ApplicationRecord
  belongs_to :event
  belongs_to :group

  has_many :messages
end