class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :user, index: true, null: false
      t.references :event, index: true, null: false

      t.timestamps
    end
  end
end
