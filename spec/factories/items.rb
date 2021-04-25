FactoryBot.define do
  factory :item do
    title              {'テスト商品'}
    explain              {'テストの説明文です'}
    category_id              {'2'}
    status_id              {'3'}
    delivery_pay_id              {'2'}
    delivery_day_id              {'3'}
    delivery_area_id              {'2'}
    price              {Faker::Number.within(range: 300..9999999)}
    association :user 
  end
end
