users テーブル

| Column         | Type   | Options     |
| -------------- | ------ | ----------- |
| name           | string | null: false |
| email          | string | null: false |
| password       | string | null: false |
| first_name     | string | null: false |
| family_name    | string | null: false |
| birth_day      | date   | null: false |

Association

has_many :items
has_many :profiles : destroy
has_many :destination : destroy

Association

belongs_to : user

items テーブル

| Column           | Type      | Options     |
| ---------------- | --------- | ----------- |
| name             | string    | null: false |
| introduction     | text      | null: false |
| category         | integer   | null: false,foreigh_key: true |
| item_condition   | integer   | null: false,foreigh_key: true |    
| delivery_charge  | integer   | null: false,foreigh_key: true | 
| form_area        | integer   | null: false,foreigh_key: true | 
| delivery_time    | integer   | null: false,foreigh_key: true | 
| price            | integer   | null: false |
| users_id         |

Association

belongs_to : users

destinations テーブル

| Column                    | Type    | Options     |
| ------------------------- | --------| ------------|
| post_code                 | string  | null: false |
| prefecture                | integer | null: false |    
| city                      | string  | null: false | 
| address                   | string  | null: false | 
| phone_number              | string  | null: false |
| building_name             | string  | null: false | 

Association

belongs_to : items
belongs_to : customers 

customers テーブル

|user_id |
|item_id |