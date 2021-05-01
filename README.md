# SQLドリル

SQLドリルのサンプルデータベースをRailsの規約に合わせてスキーマを作成し、シードでデータを作成できるようにしたものです。

## テーブル作成・データ作成

```
$ bin/rails db:create
$ bin/rails db:migrate
$ bin/rails db:seed_fu
```

## 使用方法

```
$ bin/rails c
$ Employee.all.map(&:name)
```
