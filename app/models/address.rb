class Address < ActiveRecord::Base
  PERMITTED_PARAMS = [
    :street_address,
    :extended_address,
    :city,
    :country,
    :postal_code
  ]
end
