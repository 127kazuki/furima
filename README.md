# テーブル設計

## users テーブル

| Column              | Type   | Options     |
| ------------------- | ------ | ----------- |
| nickname            | string | null: false |
| email               | string | null: false, unique: true |
| encrypted_password  | string | null: false |
| last_name           | string | null: false |
| first_name          | string | null: false |
| last_name_kana      | string | null: false |
| first_name_kana     | string | null: false |
| birthday            | date   | null: false |

### Association

- has_many :items
- has_many :buyings


## items テーブル

| Column           | Type          | Options     |
| ---------------- | ------------- | ----------- |
| title            | string        | null: false |
| explain          | text          | null: false |
| category_id      | integer       | null: false |
| status_id        | integer       | null: false |
| delivery_pay_id  | integer       | null: false |
| delivery_area_id | integer       | null: false |
| delivery_day_id  | integer       | null: false |
| price            | integer       | null: false |
| user             | references    | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :buying


## buyers テーブル

| Column           | Type        | Options     |
| ---------------- | ----------- | ----------- |
| zip_code         | string      | null: false |
| delivery_area_id | integer     | null: false |
| city             | string      | null: false |
| street           | string      | null: false |
| building         | string      |             |
| phone_number     | string      | null: false |
| buying           | references  | null: false, foreign_key: true |


### Association
- belongs_to :buying

## buyings テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| user     | references | null: false, foreign_key: true |
| item    | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user
- has_one :buyer
