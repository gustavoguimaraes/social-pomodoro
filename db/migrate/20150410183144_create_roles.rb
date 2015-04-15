class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name, null: false, default: ""
      t.string :description, null: false, default: ""

      t.timestamps
    end
  end
end
