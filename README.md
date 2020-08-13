user テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

Association

has_many :item
has_many :profiles : destroy
has_many :destination : destroy

profiles テーブル

| Column         | Type   | Options     |
| -------------- | ------ | ----------- |
| first_name     | string | null: false |
| family_name    | string | null: false |
| birth_day      | date   | null: false |

Association

belongs_to : user

items テーブル

| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| name             | string | null: false |
| introduction     | text | null: false |
| category         | references| null: false,foreigh_key: true |
| item_condition   | references| null: false,foreigh_key: true |    
| delivery_charge  | references| null: false,foreigh_key: true | 
| form_area        | references| null: false,foreigh_key: true | 
| delivery_time    | references| null: false,foreigh_key: true | 
| price            | integer   | null: false |

Association

belongs_to : user

destination テーブル

| Column                    | Type   | Options     |
| ------------------------- | ------ | ----------- |
| destination_first_name    | string | null: false |
| destination_family_name   | string | null: false |
| post_code                 | integer(7)| null: false|
| prefecture                | integer| null: false|    
| city                      | string| null: false| 
| address                   | string| null: false| 
| phone_number              | string| null: false|

Association

belongs_to : user