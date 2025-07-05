

class FirebaseRealtime {
  // Realtime Database パス
  static const String pathViewCounts = 'viewCounts';
  static const String pathPostStats = 'postStats';
  
  // デバッグ環境用プレフィックス
  static const String debugPrefix = 'db_';
  
  // 環境別パス取得
  static String getEnvironmentPath(String basePath, {bool isDebug = false}) {
    return isDebug ? '$debugPrefix$basePath' : basePath;
  }
  
  // ビュー数パス
  static String getViewCountsPath({bool isDebug = false}) {
    return getEnvironmentPath(pathViewCounts, isDebug: isDebug);
  }
  
  // 投稿統計パス  
  static String getPostStatsPath({bool isDebug = false}) {
    return getEnvironmentPath(pathPostStats, isDebug: isDebug);
  }
}