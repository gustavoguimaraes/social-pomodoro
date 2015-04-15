class User < ActiveRecord::Base
  PERMITTED_PARAMS = [:name, :email]
end
