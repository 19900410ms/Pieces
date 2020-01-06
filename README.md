# README

## アプリケーション名
Pieces  
URL: http://18.178.31.31/

## 概要
知識のアウトプット、日々のブログ、趣味の発信ができるサイトとなっております。

## 機能・技術
- ユーザー登録（wizard）
- ユーザー管理機能（devise）
- レスポンシブデザイン導入（スマートフォン想定）
- 画像添付可能なテキスト投稿機能（carrierwave、mini_magick）
- コメント機能（ajaxによる非同期通信）
- いいね機能（local: trueを用いた非同期通信）
- 投稿一覧ページでのページネーション（kaminari）
- 投稿検索機能（ransack）

## 開発環境
- ruby 2.5.1
- Ruby on Rails 5.2.4.1

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
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user


## contributions
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text|null: false|
|image|string||
|likes_count|integer||
|genre_id|integer||
|public_id|integer||
|user_id|integer|null: false, foreign_key: true|

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
