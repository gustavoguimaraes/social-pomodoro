class RoleAssignment < ActiveRecord::Base
  PERMITTED_PARAMS = [:participation_id, :role_id]
end
