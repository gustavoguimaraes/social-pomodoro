class Role < ActiveRecord::Base
  PERMITTED_PARAMS = [:name, :description]

  belongs_to :role_assignment
end
