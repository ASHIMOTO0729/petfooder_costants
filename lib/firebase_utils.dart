/// Firebase関連のユーティリティ関数
/// petfooder方式のflavor処理を統一実装

// Flavor を判定するためのメソッド (petfooder方式)
String getCollectionPrefix() {
  const flavor = String.fromEnvironment('flavor');
  if (flavor == 'dp' || flavor == 'ios_Simulator' || flavor == 'ios_Device' || flavor == 'android_Device') {
    return 'db_'; // デバッグ用のデータベースプレフィックス
  }
  return ''; // デフォルトのプレフィックス（通常は空文字列）
}