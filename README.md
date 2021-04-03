# テーブル設計

## users テーブル

| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| nickname              | string | null: false |
| email                 | string | null: false |
| password              | string | null: false |
| password_confirmation | string | null: false |
| name                  | string | null: false |
| name_kana             | string | null: false |
| birthday              | string | null: false |

### Association

- has_many :items
- has_one :buyer


## items テーブル

| Column        | Type      | Options     |
| ------------- | --------- | ----------- |
| image         | ActiveStorage    | null: false |
| title         | string           | null: false |
| explain       | text             | null: false |
| category      | string           | null: false |
| status        | string           | null: false |
| delivery_pay  | string           | null: false |
| delivery_area | string           | null: false |
| delivery_day  | string           | null: false |
| user_id       | reference        | null: false, foreign_key: true |

### Association

- belongs_to :users
- has_one :buyer


## buyers テーブル

| Column             | Type       | Options     |
| ------------------ | ---------  | ----------- |
| card_num           | string     | null: false |
| security_num       | string     | null: false |
| address_num        | string     | null: false |
| address_prefecture | string     | null: false |
| address_city       | string     | null: false |
| address_street     | string     | null: false |
| address_building   | string     |             |
| phone_number       | string     | null: false |
| user_id            | references | null: false, foreign_key: true |
| items_id           | references | null: false, foreign_key: true |

### Association

- belongs_to :items
- belongs_to :users
