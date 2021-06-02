FactoryBot.define do
  factory :buyer do
      zip_code              {'111-1111'}
      delivery_area_id     {2}
      city              {'中央区'}
      street             {'銀座'}
      building             {''}
      phone_number            {'090-0000-0000'}
      buying_id       {1}
  end
end
