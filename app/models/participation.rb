class Participation < ActiveRecord::Base
  PERMITTED_PARAMS = [:user_id, :event_id]

  belongs_to :user
  belongs_to :event
end
