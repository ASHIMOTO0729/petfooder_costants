import 'firebase_utils.dart';

//投稿のアップロード状態
enum PostUploadStatus {
  completed,
  uploading,
  error,
}

//投稿の公開状態
enum PostStatus {
  public,
  private,
  draft,
}

/// Firebase Storage関連の定数 (FSnaming相当)
/// petfooder方式のflavor処理を適用
class FSnaming {
  String flavor = getCollectionPrefix();

  //ファイル名
  String get fileMyPet => '${flavor}my_pet';
  String get filePost => '${flavor}post';
  String get fileUser => '${flavor}user';

  //ポスト
  String get filePostVideo => 'post_video';
  String get filePostThumbnail => 'post_thumbnail';
  String get filePostImage => 'post_image';
//商品画像
  String get fileProduct => 'product';

//レビュー画像
  String get fileProductReview => '${flavor}product_review';

  // メタデータ
  static const keyMetaUserUid = 'user_uid'; //ユーザーID
  static const keyMetaImageType = 'image/webp'; //画像のタイプ
  static const keyMetaVideoType = 'video/mp4'; //動画のタイプ
  static const keyMetaCacheControlValue = 'public, max-age=2592000,immutable'; //30日間キャッシュ　投稿で使用
  static const keyMetaPostDocId = 'post_doc_id'; //投稿ID
  static const keyMetaReviewDocId = 'review_doc_id'; //レビューID
  static const keyMetaProductDocId = 'product_doc_id'; //商品ID
  static const keyMetaPetDocId = 'pet_doc_id'; //ペットID
  static const keyMetaPostPreviewKey = 'post_preview_key'; //投稿プレビューID
}
