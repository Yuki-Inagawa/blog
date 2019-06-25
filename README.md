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

* Deployment instructions

* ...
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false,index: true|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :articles
- has_many :comments


## articlesテーブル

|Column|Type|Options|
|------|----|-------|
|content|string||
|image|string||
|user|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :comments

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|content|string||
|user|references|null: false, foreign_key: true|
|article|references|null: false, foreign_key: true|


### Association
- belongs_to :user
- belongs_to :article


