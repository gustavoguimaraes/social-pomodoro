FactoryGirl.define do
  factory :address do
    street_address "123 main street"
    extended_address "#30, ring at Dorian"
    city "Berlin"
    country "Germany"
    postal_code "123ABC"
  end
end
