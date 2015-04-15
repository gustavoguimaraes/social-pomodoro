class CreateRoleAssignments < ActiveRecord::Migration
  def change
    create_table :role_assignments do |t|
      t.references :participation
      t.references :role

      t.timestamps
    end
  end
end
