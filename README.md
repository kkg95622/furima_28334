users テーブル

| Column              | Type   | Options     |
| ------------------- | ------ | ----------- |
| name                | string | null: false |
| email               | string | null: false |
| password            | string | null: false |
| first_name          | string | null: false |
| family_name         | string | null: false |
| birth_day           | date   | null: false |
| first_name_kana     | string | null: false |
| family_name_kana    | string | null: false |

Association

has_many :items
has_many :profiles : destroy

items テーブル

| Column           | Type      | Options     |
| ---------------- | --------- | ----------- |
| name             | string    | null: false |
| introduction     | text      | null: false |
| category         | integer   | null: false |
| item_condition   | integer   | null: false |    
| delivery_charge  | integer   | null: false | 
| form_area        | integer   | null: false | 
| delivery_time    | integer   | null: false | 
| price            | integer   | null: false |
| users_id         | integer   | null: false,foreigh_key: true | 

Association

belongs_to : user
belongs_to : customer

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

belongs_to : customer

customers テーブル

|user_id | integer   | null: false,foreigh_key: true | 
|item_id | integer   | null: false,foreigh_key: true | 

Association

belongs_to : user
belongs_to : item