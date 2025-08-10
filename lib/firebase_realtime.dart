/// データ構成は以下
/// base/sub/{id}/[key:value]
/// base/sub/{id}:value
class FRDnaming {
  // Realtime Database 基盤
  static const String baseCountPath = 'count';
  static const String baseUserPath = 'user';

  //

  //--------------------------------
  // 投稿カウント
  //--------------------------------
  static const String subPostCount = 'post_count';
  static const String keyPostViewCounts = 'post_view_counts'; //視聴数
  static const String keyPostLikeCounts = 'post_like_counts'; //いいね数
  static const String keyPostShareCounts = 'post_share_counts'; //シェア数
  static const String keyPostCommentCounts = 'post_comment_counts'; //コメント数
  //----

  static const String subPostCommentLikeCounts = 'post_comment_like_counts'; //コメントいいね数

  //--------------------------------
  // ペットカウント
  //--------------------------------
  static const String subPetCount = 'pet_count';
  static const String keyPetViewCounts = 'pet_post_view_counts'; //合計視聴数
  static const String keyPetLikeCounts = 'pet_post_like_counts'; //合計投稿いいね数
  static const String keyPetReviewLikeCounts = 'pet_review_like_counts'; //合計レビューいいね数

  //--------------------------------
  // ユーザーカウント
  //--------------------------------

  static const String subAccountBan = 'account_ban'; //アカウントバン数
  //----
  //カウント
  static const String subUserCount = 'user_count';
  static const String keyUserPostCounts = 'user_post_counts'; //投稿数
  static const String keyUserReviewCounts = 'user_review_counts'; //レビュー数
  static const String keyUserTicketCounts = 'user_ticket_counts'; //チケット枚数
  static const String keyUserFollowCounts = 'user_follow_counts'; //フォロー数
  static const String keyUserFollowerCounts = 'user_follower_counts'; //フォロワー数

  //簡易アカウント情報(名前とプロフィール画像)
  static const String subUserSimple = 'user_simple';
  static const String keyUserSimpleName = 'user_display_name'; //表示名
  static const String keyUserSimpleProfileImage = 'user_profile_image'; //プロフィール画像
  static const String keyUserSimpleBio = 'user_bio'; //自己紹介
  static const String keyUserSimpleIsHealthPublic = 'user_health_public'; //公開設定

  //----
  //通知の許可
  static const String subUserNotification = 'user_notification';
  static const String keyUserNotificationTopicLikeReview = 'user_notification_like_review';
  static const String keyUserNotificationTopicLikePost = 'user_notification_like_post';
  static const String keyUserNotificationTopicLikePostComment = 'user_notification_like_post_comment';
  static const String keyUserNotificationTopicPostComment = 'user_notification_post_comment';
  static const String keyUserNotificationTopicApp = 'user_notification_app';
  static const String keyUserNotificationTopicAppDebug = 'user_notification_app_debug';
  //----
  //チケット
  static const String subUserTicketLog = 'user_ticket_log';
  static const String keyUserTicketLogGetReviewAd = 'user_ticket_log_get_review_ad'; //レビュー広告チケット取得数
  static const String keyUserTicketLogGetReviewNoAd = 'user_ticket_log_get_review_no_ad'; //レビュー非広告チケット取得数
  static const String keyUserTicketLogLostPost = 'user_ticket_log_lost_post'; //投稿消費チケット数
  static const String keyUserTicketLogGetFirstLogin = 'user_ticket_log_get_first_login'; //初回ログインチケット取得数
  //----
  //通知
  static const String subUserNotificationUnreadCounts = 'user_notification_unread_counts'; //通知の未読数

  //削除された投稿
  static const String subDeleteingLog = 'deleting_log'; //削除された投稿
  static const String keyDeletedAt = 'deleted_at'; //削除日時
  static const String keyDeletedDocId = 'deleted_doc_id'; //削除された投稿のドキュメントID
  static const String keyDeletedType = 'deleted_type'; //削除された投稿のタイプ
  static const String keyDeletedBy = 'deleted_by'; //削除した

  // BGM関連（Realtime Database）
  static const keyBgmTitle = 'title';
  static const keyBgmTags = 'tags';
  static const keyBgmThumbnailUrl = 'thumbnailUrl';
  static const keyBgmIsActive = 'isActive';

  // もぐ管理
  static const String subHealthRecord = 'health_record';
  static const String keyHealthRecordTypeWeight = 'weight';
  static const String keyHealthRecordTypeMedical = 'medical';
  static const String keyHealthRecordTypeGrooming = 'grooming';
  static const String keyHealthRecordTypeFood = 'food';
  static const String keyHealthRecordTypeProduct = 'product';
  static const String keyHealthRecordTypeOther = 'other';
  static const String keyHealthRecordWeight = 'weight';
  static const String keyHealthRecordCost = 'cost';
  static const String keyHealthRecordStoreDocId = 'store_doc_id';
  
}
