# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :day_feedback do
    mood "Stressed"
    title "MyString"
    text "MyText"
    day  Date.current
  end
end
