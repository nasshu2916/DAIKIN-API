# DAIKIN Cleaner API

ダイキン製加湿空気清浄機 の API です。

各エンドポイントに対してどのhttpメソッドを使ってもレスポンスが返ってくる。また、パラメータを送る場合、クエリパラメータで送信する。

レスポンスは、 key と value を = で繋いだコンマ区切りの形式でレスポンスが返ってくる。

## [API 一覧](http://htmlpreview.github.io/?https://github.com/nasshu2916/DAIKIN-API/blob/master/index.html)  
レスポンス内容を確認する場合は ローカルで swagger-ui を立ち上げてください。


検証機器
```
型番: DAIKIN MCK70X
Firmware: 1.11.2-g4
```

### ローカル環境

```sh
docker-compose up -d
```

port:8080 で swagger-ui が立ち上がります。

swagger-ui は、[swagger/swagger.yaml](https://github.com/nasshu2916/DAIKIN-API/blob/master/swagger/swagger.yaml) を `swagger-cli` で結合させた [daikin.yaml](https://github.com/nasshu2916/DAIKIN-API/blob/master/daikin.yaml) の内容を表示しています。

また、makefile で yaml の結合と同時に html を生成します。

## API 仕様

swagger には json 形式で書いてまずが、実際は key と value を = で繋いだコンマ区切りの形式でレスポンスが返ってきます。

基本的にすべて GET リクエストで set 系のものは URL パラメータ で送られています。

### 記載 API 一覧
- /common: 機器に関する情報の取得、登録の API 群  
- /cleaner: 空気清浄機に関する情報の取得、登録の API 群

#### common(機器に関する情報)
| Path                      | Description           |
|---------------------------|-----------------------|
| /common/basic_info        | 機器の基本情報を取得    |
| /common/get_datetime      | 機器の時刻を取得        |
| /common/get_notify        | 通知情報を取得         |
| /common/get_wifi_setting  | Wi-Fi の接続を情報を取得 |
| /common/notify_date_time  | 現在時刻の登録         |
| /common/look_adapter      | 接続確認を開始         |
| /common/stop_look_adapter | 接続確認を終了         |
| /common/set_name          | 機器の名称を変更        |

#### cleaner(空気清浄機に関する情報)
| Path                         | Description                        |
|------------------------------|------------------------------------|
| /cleaner/get_model_info      | モデルの情報を取得                      |
| /cleaner/get_unit_info       | ユニットの情報を取得                     |
| /cleaner/get_control_info    | 空気清浄機のモードを取得                |
| /cleaner/set_control_info    | 空気清浄機のモードを変更                |
| /cleaner/get_ctrl_info       | 空気清浄機のモードを取得                |
| /cleaner/get_unit_status     | 空気清浄機のユニットの状態を取得          |
| /cleaner/get_device_setting  | 空気清浄機のデバイス設定を取得           |
| /cleaner/set_device_setting  | 空気清浄機のデバイス設定を変更           |
| /cleaner/get_day_snsr_count  | 空気清浄機の 1 日のセンサ反応グラフの取得   |
| /cleaner/get_week_snsr_count | 空気清浄機の 1 週間のセンサ反応グラフの取得 |
