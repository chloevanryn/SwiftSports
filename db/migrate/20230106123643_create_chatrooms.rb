class CreateChatrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :chatrooms do |t|
      t.string :chat_event
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
