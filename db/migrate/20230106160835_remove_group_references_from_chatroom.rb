class RemoveGroupReferencesFromChatroom < ActiveRecord::Migration[7.0]
  def change
    remove_reference :chatrooms, :group
  end
end
