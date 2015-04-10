class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :description, null: false
      t.datetime :begin_at, null: false
      t.datetime :end_at, null: false
      t.references :address, index: true, null: false

      t.timestamps
    end
  end
end
