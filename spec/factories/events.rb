FactoryGirl.define do
  factory :event do
    description "Costume-themed social pomodoro ;) Come as spiderman, a panda, or whatever :D"
    begin_at "2015-04-10 10:00:00"
    end_at "2015-04-10 23:30:00"
    address
  end
end
