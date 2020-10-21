# README

This README would normally document whatever steps are necessary to get the
application up and running.

## Application name

contouch

## Application summary

contouch は、友達の友達からつながる SNS サービスです。
友達の紹介文を書いて他己紹介し、また紹介されることで交流の輪が広げられるアプリです。

具体的には、下記のことがでます。

1. ユーザー同士の友達申請・承認
2. 友達の他己紹介作成・編集
3. 友達の友達の他己紹介分閲覧

## URL

http://54.150.28.205/

## How to login

### Basic 認証

- user : admin
- password: passw0rd

### アカウントリスト

#### account1

- nickname: demo0001
- Email : demo0001@example.com
- Password: demo0001

#### account2

- nickname: demo0002
- Email : demo0002@example.com
- Password: demo0002

#### account3

- nickname: demo0003
- Email : demo0003@example.com
- Password: demo0003

## How to use

1. ユーザー同士の友達申請・承認

&emsp;&emsp;(1). ログイン後、最下部にある「ユーザー一覧」より、友達申請したいユーザーの「友達申請する」を押下する。<br>
&emsp;&emsp;&emsp;&emsp;→「友達申請中一覧」に申請したユーザーが表示されます。<br>
&emsp;&emsp;(2). 友達申請先のユーザーでログインし、「友達リクエスト一覧」より「承認する」を押下する。<br>
&emsp;&emsp;&emsp;&emsp;→「友達一覧」に承認したユーザー名が表示されます。（申請元でも同様です）<br>

2. 友達の他己紹介作成・編集

&emsp;&emsp;(1). 友達一覧より任意のユーザーで「新規作成」を押下する。<br>
&emsp;&emsp;(2). テキストエリアに紹介文を記載のうえ、「投稿する」を押下する。<br>
&emsp;&emsp;&emsp;&emsp;→「友達一覧」のユーザー名の下に紹介文が記載されます。<br>
&emsp;&emsp;&emsp;&emsp;&emsp;また、紹介されたユーザーでログインすると、「友達が投稿した他己紹介一覧」に紹介文が表示されます。<br>

3. 友達の友達の他己紹介分閲覧

&emsp;&emsp;(1). 「友達の友達一覧」にユーザーの友達の友達が表示されます。<br>
&emsp;&emsp;&emsp;&emsp;友達が紹介文を記載している場合、紹介文が表示されます。<br>

## What problem did you try to solve

SNS の台頭により様々な人と繋がれる様になった一方で、コロナ禍で友達同士の接点が減少し、<br>
気のおける友達を起点とした人間関係が広がりづらい状況になっています。<br>
<br>
そこで contouch では、友達の紹介文を書き、書いてもらうことで<br>
気軽に身近な人との交流を作ることを目的として、アプリを開発しました。<br>

## requirement / Implementation function

※ 実装済の場合、（済）と記載<br>
※ 実装の優先順位を（高）S,A,B,C（低）で記載<br>

### 1. ユーザーを管理できる

[済] 1-1. アカウント登録機能（S）<br>
[済] 1-2. ログイン・ログアウト機能（S）<br>
&emsp;&emsp;1-3. ユーザー情報編集機能（B）<br>
&emsp;&emsp;1-4. アカウント削除機能（C）<br>
&emsp;&emsp;1-5. SNS 連携によるアカウント登録・ログイン機能（B）<br>

### 2. ユーザー情報を閲覧できる

[済] 2-1. ユーザー一覧表示機能（S）<br>
[済] 2-2. 友人一覧表示機能（S）<br>
[済] 2-3. 共通の友人一覧表示機能（A）<br>
&emsp;&emsp;2-4. ユーザー検索機能（B）<br>
&emsp;&emsp;2-5. ユーザー詳細情報閲覧機能（A）<br>
[済] 2-6. 共通の友人表示機能（B）<br>
&emsp;&emsp;2-7. SNS 連携による友人候補情報の取得・表示（B）<br>

### 3. 友達を管理できる

[済] 3-1. 友達申請機能（S）<br>
[済] 3-2. 友達承認機能（A）<br>

### 4. 自己紹介を入力できる

&emsp;&emsp;4-1. 自己紹介入力機能（A）<br>
&emsp;&emsp;4-2. 自己紹介の編集機能（C）<br>

### 5. 友人の他己紹介を入力できる

[済] 5-1. 他己紹介の入力機能（S）<br>
[済] 5-2. 他己紹介の編集機能（B）<br>
&emsp;&emsp;5-3. 他己紹介の申請・承認機能（B）<br>
&emsp;&emsp;5-4. 他己紹介の公開・非公開設定機能（C）<br>

### 6. 共通の友人がいるユーザーとコンタクトがとれる<br>

&emsp;&emsp;6-1. チャット送信・閲覧機能（A）<br>
&emsp;&emsp;6-2. チャット編集機能（C）<br>
&emsp;&emsp;6-3. チャット削除機能（C）<br>

### 7. コミュニティ単位で一括登録ができる

&emsp;&emsp;7-1. コミュニティ登録機能（C）<br>
&emsp;&emsp;7-2. コミュニティとユーザ紐付け機能（C）<br>
&emsp;&emsp;7-3. ユーザーの招待用リンク作成機能（C）<br>

## Demo Movie

[![](https://img.youtube.com/vi/evzog0YMnP4/0.jpg)](https://www.youtube.com/watch?v=evzog0YMnP4)

## Database Design

### users テーブル

| Column            | Type   | Options     |
| ----------------- | ------ | ----------- |
| nickname          | string | null: false |
| email             | string | null: false |
| password          | string | null: false |
| last_name         | string | null: false |
| first_name        | string | null: false |
| birthday          | date   | null: false |
| self_introduction | text   |             |

#### Association

- has_one :self_introduction
- has_many :friend_approvals
- has_many :user_relations

### friend_approvals テーブル

| Column    | Type    | Options                        |
| --------- | ------- | ------------------------------ |
| user_id   | integer | null: false, foreign_key: true |
| friend_id | integer | null: false, foreign_key: true |

#### Association

- belongs_to :user

### user_relations テーブル

| Column              | Type    | Options                        |
| ------------------- | ------- | ------------------------------ |
| user_id             | integer | null: false, foreign_key: true |
| friend_id           | integer | null: false, foreign_key: true |
| friend_introduction | text    |                                |

#### Association

- belongs_to :user

## How to work in the local environment

### version

ruby: 2.6.5

### Work procedure

※ 下記作業はターミナルで実行してください

1. ファイルをクローンしたいディレクトリに移動し、下記コマンドを実行する。
   &emsp;&emsp;git clone https://github.com/junyam1020/contouch

2. rails db:create でデータベースを作成のうえ、rails db:migrate を実行する。

3. クローンしたデイレクトリで rails s を実行する。
   &emsp;&emsp;※ yarn が古いと表示される場合は、下記コマンドを実行
   &emsp;&emsp;&emsp;yarn install --check-files;
