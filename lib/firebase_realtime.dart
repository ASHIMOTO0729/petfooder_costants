class FRDnaming {
  // Realtime Database 基盤
  static const String baseCountPath = 'count';
  static const String baseUserPath = 'user';
  
 

  //--------------------------------
  // 投稿カウント
  //--------------------------------
  static const String pathPostViewCounts = 'post_view_counts'; //視聴数
  static const String pathPostLikeCounts = 'post_like_counts'; //いいね数
  static const String pathPostShareCounts = 'post_share_counts'; //シェア数
  static const String pathPostCommentCounts = 'post_comment_counts'; //コメント数
  static const String pathPostCommentLikeCounts = 'post_comment_like_counts'; //コメントいいね数

  //--------------------------------
  // ペットカウント
  //--------------------------------
  static const String pathPetViewCounts = 'pet_post_view_counts'; //合計視聴数
  static const String pathPetLikeCounts = 'pet_post_like_counts'; //合計投稿いいね数
  static const String pathPetReviewLikeCounts = 'pet_review_like_counts'; //合計レビューいいね数

  //--------------------------------
  // ユーザーカウント
  //--------------------------------
  static const String pathAccountBan = 'account_ban'; //アカウントバン数
  static const String pathUserTicketCounts = 'user_ticket_counts'; //チケット枚数
  static const String pathUserPostCounts = 'user_post_counts'; //投稿数
  static const String pathUserReviewCounts = 'user_review_counts'; //レビュー数
  static const String pathUserReviewLikeCounts = 'user_review_like_counts'; //レビューいいね数
  static const String pathUserNotificationUnreadCounts = 'user_notification_unread_counts'; //通知の未読数
  static const String pathUserTicketLogGetReviewAd = 'user_ticket_log_get_review_ad'; //レビュー広告チケット取得数
  static const String pathUserTicketLogGetReviewNoAd = 'user_ticket_log_get_review_no_ad'; //レビュー非広告チケット取得数
  static const String pathUserTicketLogLostPost = 'user_ticket_log_lost_post'; //投稿消費チケット数
  static const String pathUserTicketLogGetFirstLogin = 'user_ticket_log_get_first_login'; //初回ログインチケット取得数


}
