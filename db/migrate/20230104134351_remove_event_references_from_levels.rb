class RemoveEventReferencesFromLevels < ActiveRecord::Migration[7.0]
  def change
    remove_reference :levels, :event, null: false, foreign_key: true
  end
end
