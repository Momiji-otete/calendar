# Calendar
![app/assets/images/screenshot.png](https://github.com/Momiji-otete/calendar/blob/90454876982d91d57d89216d89b0faed8ef1afdc/app/assets/images/screenshot.png)

## 概要
予定の前日AM9時にリマインダーメールが届くカレンダーです。

## 開発環境
- Ruby 3.1.2
- Ruby on Rails 6.1.7.3

## Gem
- devise
- simple_calendar
- dotenv-rails
- whenever

## アピールポイント
- Action Mailerを用いたリマインダーメールの送信
- deviseによるユーザー認証
- ゲストログイン

## ユーザーエクスペリエンス
- リマインダーメールによる予定の管理

## 完成までの考え方やプロセス
カレンダーは予定を管理できることが前提だと思うが、実際予定を入れただけでは予定を忘れることもあると考えています。
通知であったり、リマインダーがあれば予定を管理しやすいと考えているので、予定を入れたら強制的にリマインダーが送られてくれば、
忘れることもないのでは？と考え、今回のカレンダーを作成しました。

## 使用方法
```
$ git clone git@github.com:Momiji-otete/calender.git
$ cd calender
$ rails db:migrate
$ yarn install
$ bundle install
$ rails s
```
