class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :imageable, index: true, null: false, polymorphic: true
      t.string :image_uid, null: false
      t.string :image_name
      t.integer :image_height, default: 0
      t.integer :image_width, default: 0

      t.timestamps
    end
  end
end
