class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false, uniq: true
      t.integer :facebook_id, uniq: true

      t.timestamps
    end
  end
end
