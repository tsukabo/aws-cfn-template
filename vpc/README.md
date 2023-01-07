# VPCの作成

## 使い方
- var.sh STACK_NAMEを作成したいSTACK名に変更
- main.yml Input ParametersのDefaultを設定したい値に変更
- $ . create_stack.sh {AWSPROFILE} で作成
- $ . delete_stack.sh {AWSPROFILE} で削除
- $ . describe_stack_events.sh {AWSPROFILE} でスタックイベント履歴の表示
