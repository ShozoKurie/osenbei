# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| age                | integer|             |
| region_id          | integer|             |
| self_introduction  | text   |             |

### Association

- has_many :reviews
- has_many :tweets 
- has_many :comments


## items テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| item_name          | string | null: false |
| maker              | string | null: false |
| region_id          | integer|             |
| url                | text   |             |

### Association

- has_many :reviews
- has_many :tweets 

## reviews テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| salty_id           | integer | null: false |
| sweet_id           | integer | null: false |
| crispy_id          | integer | null: false |
| spicy_id           | integer | null: false |
| unique_id          | integer | null: false |
| review_comment     | text    |             |

### Association

- belongs_to :user
- belongs_to :item
- has_many :tweets 


## tweets テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| report             | text    | null: false |

### Association

- belongs_to :item
- belongs_to :user
- has_many :comments


## comments テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| comment            | text    | null: false |

### Association

- belongs_to : tweet
- belongs_to : user

