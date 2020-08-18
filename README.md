# README
This README would normally document whatever steps are necessary to get the
application up and running.
Things you may want to cover:
* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instruction
* ...

## user_テーブル
|column|Type|Options|
|------|----|-------|
|nikname|string|null:false|
|パスワード|string|null:false|
|E mail|string|null:false|
|fist-name | string | null:false|
|family-name | string | null:false|
|fist-name kana | string | null:false|
|family-name kana | string | null:false|
|生年月日 | 日付 | null:false|
|前書き | text | null:false|
|アバタ | string | 
|user | | null:false,foreign_key:true|
### association
has_many:comments,dependnt: :dwestroy
has_many:favorites,dependent: :destroy
has_many:todo_lists
has_many:user_evaluations_評価
has_many:seller_items,foreigh_key:"seller_id",class_name:"items"
has_many:buyer_items,foreigh_key:"buyer_id"class_name:"items"

has_one:point
has_one:profile,dependent: :destroy
has_one:sns_authentication,dependent: :destroy
has_one:sending_destination,dependent: :destroy
has_one:credit_card,dependent: :destroy



## sns_authehtications_テーブル
|column|Type|Options|
|------|----|-------|
provider | string | null:false
uid | srring | null:false,unique:true
token | text |
user | | null:false,foreign_key:true
### association
belongs_to:user

## send_destinations_テーブル(送り先)
|column|Type|Options|
|------|----|-------|
destinations_fist-name | string | null:false
destinations_family-name | string | null:false
destinations_fist-name kana | sting | null:false
destinations_family-name kana | sting | null:false
郵便番号 | 整数（7）| null:false
都道府県コード | 整数 | null:false
市 | string | null:false
マンション名 部屋番号 | string | null:false
tel | 整数 | null:false
user | | null:false.foreign_key:true
### association
belongs_to:user
宝石:jp_pefecture  で都道府県のコード 取得

## credit_card_テーブル
|column|Type|Options|
|------|----|-------|
|card_number|integer|null:false,unique:true|
|expiration_year|integer|null:false|
|expiration_month|integer|null:false|
|security_code|integer|null:false|
|user_id|references|null:false,foreign_key:true|
### association
belongs_to:user

## user_evaluations_テーブル
|column|Type|Options|
|------|----|-------|
|review|text|null:false|
|user_id|references|null:false,foreign_key:true|
|item_id|references|null:false,foreign_key:true|
|evaluation_id|references|null:false,foreign_key:true|
### association
belongs_to_active_hash:evaluation
belongs_to:user
belongs_to:item

## ブランド_テーブル
|column|Type|Options|
|------|----|-------|
|name|string| 
### association
has_many:items

## item_img_テーブル
|url|string|null:false|
|item_id|references|null:false,foreign_key:true|
### association
belongs_to:item

## item_テーブル
|column|Type|Options|
|------|----|-------|
name | string | null:false
introduction | text | null:false
price | integer | null:false
brand_id | references | foreign_key:true
item_condition_id | references | null:false,foreign_key:true
postage_payer_id (配送料) | references | null:false
prefecture_code | integer | null:false
size_id | | null:false,foreign_key:true
preparation_day_id | references | null:false,foreign_key:true
postage_type(送料払い) | references | null:false,foreign_key:true
item_img_id | references | null:folse,foreign_key:true
category_id | references | null:folse,soreign_key:true
trading_status(信用取引) | enum | null:false
seller_id | references | null:false,foreign_key:true
buyer_id | references | foreign_key:true
deal_closed_date(対照 閉 deta) | taim stanp |
### association
has_many:coments,dependent: :destroy
has_many:favorites
has_many:items_imgs,dependent: :destroy
has_one:users_evaluation
belongs_to:category
belongs_to:actyev_hash:size
belongs_to:actyev_hash:item_condition
belongs_to:actyev_hash:postage_payer
belongs_to:actyev_hash:preparation_day
belongs_to:actyev_hash:postage_type
belongs_to:actyev_hash:brand
belongs_to:actyev_hash:seller,class_name:user:
belongs_to:actyev_hash:buyer,class_name:user:
宝石:jp_prefecture (コード取得)

## favorite_テーブル
|column|Type|Options|
|------|----|-------|
user |  | null:false,freign_key:true
項目 |  | null:false,freign_key:true
### association
belongs_to:user
belongs_to:item

## coments_テーブル
|column|Type|Options|
|------|----|-------|
coment | text | null:false
user |  | null:false,foreign_key:true
項目 |  | null:false,foreign_key:true
created_at | taim stanp |null:false
### association
belongs_to:user
belongs_to:item

## category_テーブル
|column|Type|Options|
|------|----|-------|
|name|string|null:false|
|属性|string|null:false|
### association
has_many:items