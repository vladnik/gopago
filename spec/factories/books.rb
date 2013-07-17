# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title "Some Title"
    available true
    status_changed_at "2013-07-16 21:15:38"
  end
end
