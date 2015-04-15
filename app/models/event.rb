class Event < ActiveRecord::Base
  PERMITTED_PARAMS = [:description, :begin_at, :end_at, :address_id]

  belongs_to :address
end
