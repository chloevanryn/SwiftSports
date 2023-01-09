class Group < ApplicationRecord
  # after_create :create_chatroom

  belongs_to :user

  has_many :users, through: :user_groups
  has_many :posts

  has_one_attached :photo
end
