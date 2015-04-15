class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :user, index: true, null: false
      # If not linked to an event, it's linked to all events
      t.references :event, index: true

      t.timestamps
    end
  end
end
