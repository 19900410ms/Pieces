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
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false, unique: ture|

### Association
- belongs_to :profile
- has_many :contributions
- has_many :comments
- has_many :like


## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|gender|string||
|sports|string||
|study_fields|string||
|user_id|integer|foreign_key: true|

### Association
- belongs_to :user



## contributions
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text|null: false|
|image|string||
|user_id|integer|foreign_key: true|

### Association
- belongs_to :user
- has_many :comments
- has_many :like


## comments
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|user_id|integer|null: false, foreign_key: ture|
|contribution_id|integer|null: false, foreign_key: ture|

### Association
- belongs_to :user
- belongs_to :contribution


## likes
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: ture|
|contribution_id|integer|null: false, foreign_key: ture|

### Association
- belongs_to :user
- belongs_to :contribution
