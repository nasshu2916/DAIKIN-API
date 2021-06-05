# DAIKIN Cleaner API

ダイキン製加湿空気清浄機 の API です。

検証機器

```
型番: DAIKIN MCK70X
Firmware: 1.11.2-g4
```

### 確認方法

```sh
docker-compose up -d
```

port:8080 で swagger-ui が立ち上がります。

swagger-ui は、[swagger/swagger.yaml](https://github.com/nasshu2916/DAIKIN-API/blob/master/swagger/swagger.yaml) を `swagger-cli` で結合させた [daikin.yaml](https://github.com/nasshu2916/DAIKIN-API/blob/master/daikin.yaml) の内容を表示しています。

## API 仕様

swagger には json 形式で書いてまずが、実際は key と value を = で繋いだコンマ区切りの形式でレスポンスが返ってきます。

基本的にすべて GET リクエストで set 系のものは URL パラメータ で送られています。

### 記載 API 一覧

/common: 機器に関する情報の取得、登録の API 群
/cleaner: 空気清浄機に関する情報の取得、登録の API 群

| Path                      | description                                |
| ------------------------- | ------------------------------------------ |
| /common/basic_info        | 機器の基本情報を取得                       |
| common/get_datetime       | 機器の時刻を取得                           |
| /common/get_notify        | 通知情報を取得                             |
| /common/notify_date_time  | 現在時刻の登録(URL パラメータで内容を送信) |
| /cleaner/get_model_info   | モデルの情報を取得                         |
| /cleaner/get_unit_info    | ユニットの情報を取得                       |
| /cleaner/set_control_info | 空気清浄機のモードを変更                   |
