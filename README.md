# README

## アプリケーション
name: Pieces  
URL:  http://18.177.202.94/

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
- AWS
- EC2
- S3
