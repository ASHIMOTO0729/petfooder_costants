import 'package:flutter/foundation.dart';

/// Firebase関連のデバッグユーティリティ関数
/// petfooder/petfood_development間で共有される

/// デバッグモードでのみログを出力する関数
void debugPrintWidget(dynamic text) {
  if (kDebugMode) {
    debugPrint(text.toString());
  }
}

/// Firebase Analyticsイベントの定義
enum AnalyticsEvent {
  // Firebase Database関連
  firebaseRead,
  firebaseWrite,
  firebaseUpdate,
  firebaseDelete,
  
  // Error関連
  errorFirebaseDatabase,
  errorFirebaseAuth,
  errorFirebaseStorage,
  errorFirebaseFunctions,
  
  // 機能別イベント
  reviewSave,
  reviewDelete,
  reviewUpdate,
  postSave,
  postDelete,
  postUpdate,
  petSave,
  petDelete,
  petUpdate,
  userSave,
  userUpdate,
  userDelete,
  
  // その他
  appLaunch,
  screenView,
  buttonClick,
}

/// Firestore操作の計測を行うクラス
/// シングルトンパターンでアプリ全体の操作回数を計測
class FirestoreReadCounter {
  FirestoreReadCounter._internal();
  
  static final FirestoreReadCounter instance = FirestoreReadCounter._internal();
  
  final Map<AnalyticsEvent, Map<String, int>> _counter = {};
  
  /// READ操作の計測
  void incrementRead({
    required String label, 
    int count = 1, 
    String? docId, 
    required String? userUid
  }) {
    _increment(
      event: AnalyticsEvent.firebaseRead, 
      label: label, 
      count: count, 
      docId: docId, 
      userUid: userUid
    );
  }
  
  /// SAVE/CREATE操作の計測
  void incrementSave({
    required AnalyticsEvent event, 
    required String label, 
    int count = 1, 
    String? docId, 
    required String? userUid
  }) {
    _increment(
      event: event, 
      label: label, 
      count: count, 
      docId: docId, 
      userUid: userUid
    );
  }
  
  /// UPDATE操作の計測
  void incrementUpdate({
    required AnalyticsEvent event, 
    required String label, 
    int count = 1, 
    String? docId, 
    required String? userUid
  }) {
    _increment(
      event: event, 
      label: label, 
      count: count, 
      docId: docId, 
      userUid: userUid
    );
  }
  
  /// DELETE操作の計測
  void incrementDelete({
    required AnalyticsEvent event, 
    required String label, 
    int count = 1, 
    String? docId, 
    required String? userUid
  }) {
    _increment(
      event: event, 
      label: label, 
      count: count, 
      docId: docId, 
      userUid: userUid
    );
  }
  
  /// 計測結果のサマリーを出力
  void printSummary() {
    if (kDebugMode) {
      debugPrint('=== Firestore Operations Summary ===');
      _counter.forEach((event, labelMap) {
        debugPrint('Event: ${event.toString()}');
        labelMap.forEach((label, count) {
          debugPrint('  $label: $count operations');
        });
      });
      debugPrint('=====================================');
    }
  }
  
  /// 計測データをクリア
  void clearCounters() {
    _counter.clear();
  }
  
  /// 特定のイベントの総操作数を取得
  int getTotalCount(AnalyticsEvent event) {
    final labelMap = _counter[event];
    if (labelMap == null) return 0;
    return labelMap.values.fold(0, (total, count) => total + count);
  }
  
  /// 内部の計測処理
  void _increment({
    required AnalyticsEvent event, 
    required String label, 
    required int count, 
    required String? userUid, 
    String? docId
  }) {
    if (!_counter.containsKey(event)) {
      _counter[event] = <String, int>{};
    }
    
    final labelMap = _counter[event]!;
    labelMap[label] = (labelMap[label] ?? 0) + count;
    
    // デバッグ情報の出力
    debugPrintWidget(
      'Firebase Operation: ${event.toString()} - $label (count: $count) '
      '${docId != null ? 'docId: $docId ' : ''}'
      '${userUid != null ? 'userUid: $userUid' : ''}'
    );
  }
}