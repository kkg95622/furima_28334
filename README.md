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
has_many :customers

customers テーブル

| Column              | Type   | Options     |
| ------------------- | ------ | ----------- |
| users_id            | integer| null: false,foreigh_key: true | 
| items_id            | integer| null: false,foreigh_key: true | 

Association

belongs_to : user
belongs_to : item
has_one : address


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
| users_id         | integer| null: false,foreigh_key: true | 

Association

belongs_to : user
belongs_to : customer

addresses テーブル

| Column                    | Type   | Options     |
| ------------------------- | -------| ------------|
| post_code                 | string | null: false |
| prefecture                | integer| null: false |    
| city                      | string | null: false | 
| house_number              | string | null: false | 
| phone_number              | string | 
| building_name             | string | 
| users_id                  | integer| null: false,foreigh_key: true | 

Association

belongs_to : customer