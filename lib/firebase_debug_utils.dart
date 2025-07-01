
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
/// petfooder/petfood_development間で共有される完全なAnalyticsEvent定義
enum AnalyticsEvent {
  // レビュー (Review)
  reviewSave,
  reviewUpdate,
  reviewDelete,
  reviewLike,

  // ポスト (Post)  
  postSave,
  postUpdate,
  postDelete,
  postLike,
  postCommentLike,
  postCommentSave,
  postCommentDelete,
  postViewCount,

  // 通知 (Notification)
  notificationUpdate,
  notificationGet,

  // 通報 (Report)
  reportSave,

  // チケット (Ticket)
  ticketUpdate,

  // ペット (Pet)
  petSave,
  petUpdate,
  petDelete,

  // ユーザー情報 (User Info)
  userInfoSave,
  userInfoUpdate,
  userInfoDelete,

  // データ取得 (Data Get)
  getData,

  // Firestore READ
  firebaseRead,

  // FCMトークン更新 (FCM Token Update)
  fcmTokenUpdate,

  // エラー (Error)
  error,
  errorFirebaseDatabase,
  errorFirebaseStorage,
  errorFirebaseFunctions,
  errorFirebaseAuth,
  errorAlgoliaSearch,

  // リワード広告 (Reward Ad)
  rewardAd,

  // サインアップ (Sign Up/Out)
  signUp,
  signOut,
  initializeNewUser,
  deleteAccount,
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