class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :kind, null: false
      t.references :participation, index: true, null: false

      t.timestamps
    end
  end
end
