# Shared Constants Package

petfood プロジェクト間で共有される定数パッケージです。

## 対応プロジェクト
- petfood_development (管理ツール)
- petfooder (エンドユーザーアプリ)
- Firebase Functions

## 構成
- `lib/` - Dart定数ファイル
- `js/` - JavaScript定数ファイル (Firebase Functions用)

## 使用方法

### Flutter プロジェクト
```yaml
dependencies:
  shared_constants:
    git: https://github.com/username/shared_constants_package.git
```

```dart
import 'package:shared_constants/shared_constants.dart';

final fdb = FDBnaming();
final fsn = FSnaming();
```

### Firebase Functions
```javascript
const { FirebaseConstants, FunctionConstants } = require('shared_constants/js/firebase_constants.js');
```

## 重要な注意点
- 通知トピック名は3プロジェクト間で完全一致が必要
- flavor処理はpetfooder方式を採用
- 定数変更時は全プロジェクトで動作確認が必要

## Flavor処理
- `dp`, `ios_Simulator`, `ios_Device`, `android_Device` → `db_` prefix
- その他 → prefix なし