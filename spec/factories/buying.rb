FactoryBot.define do
  factory :buying do
      association :user
      association :item
  end
end