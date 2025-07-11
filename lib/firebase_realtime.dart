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

  static const String subPostCommentCounts = 'post_comment'; //コメントいいね数
  static const String keyPostCommentReplyCounts = 'post_comment_reply_counts'; //コメント返信数
  static const String keyPostCommentLikeCounts = 'post_comment_like_counts'; //コメントいいね数

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

  //簡易アカウント情報(名前とプロフィール画像)
  static const String subUserSimple = 'user_simple';
  static const String keyUserSimpleName = 'user_display_name'; //表示名
  static const String keyUserSimpleProfileImage = 'user_profile_image'; //プロフィール画像
  static const String keyUserSimpleBio = 'user_bio'; //自己紹介

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
}
