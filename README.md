# usersテーブル

| Column              | type     | Options                 |
| ------------------- | -------- | ----------------------  |
| nickname            | string   | null:false              |
| email               | string   | null:false, unique:true |
| encrypted_password  | string   | null:false              |
| family_name         | string   | null:false              |
| first_name          | string   | null:false              |
| family_name_kana    | string   | null:false              |
| first_name_kana     | string   | null:false              |
| birthday            | date     | null:false              |

### Association

- has_many :orders



# productsテーブル

| Column         | Type      | Options            |
| -------------- | --------- | ------------------ |
| menu           | string    | null:false         |
| price          | integer   | null:false         |
| introduction   | text      | null:false         |
| shop_name      | string    | null:false         |
| category_id    | integer   | null:false         |
| eco_appeal     | text      | null:false         |


- has_one :order



# ordersテーブル

| Column       | Type        | Options                        |
| ------------ | ----------- | ------------------------------ |
| user         | references  | null:false, foreign_key: true  |
| product      | references  | null:false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :product
- has_one    :destination



# destinationsテーブル

| Column          | Type        | Options                       |
| --------------- | ----------- | ----------------------------- |
| post_code       | string      | null:false                    |
| prefecture_id   | integer     | null:false                    |
| city            | string      | null:false                    |
| address         | string      | null:false                    |
| building        | string      |                               |
| phone_number    | string      | null:false                    |
| order           | references  | null:false, foreign_key:true  |

### Association

- belongs_to :order
