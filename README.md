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

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| profile            | text   | null: false |
| occupation         | text   | null: fales |
| position           | text   | null: fales |

### Association

- has_many :prototypes
- has_many :comments

## comments テーブル

| Column          | Type   | Options                          |
| ----------------| ------ | ---------------------------------|
| content         | text   | null: false,  foreign_key: true  |
| prototype       | text   | null: false,  foreign_key: true  |
| user            | text   | null: false,  foreign_key: true  |

### Association

- belongs_to :prototype
- belongs_to :user

## prototypes テーブル

| Column          | Type   | Options                          |
| ----------------| ------ | ---------------------------------|
| title           | text   | null: false,  foreign_key: true  |
| cach_copy       | text   | null: false,  foreign_key: true  |
| concept         | text   | null: false,  foreign_keytrue    |
| user            | text   | null: false,  foreign_key: true  |

### Association

- belongs_to :user
- has_many :comments

