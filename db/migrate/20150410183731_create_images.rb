class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :imageable, index: true, null: false, polymorphic: true
      t.string :image_uid, null: false
      t.string :image_name, default: "", null: false
      t.integer :image_height, default: 0, null: false
      t.integer :image_width, default: 0, null: false
      t.integer :position, default: 0, null: false

      t.timestamps
    end
  end
end
