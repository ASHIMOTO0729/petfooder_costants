import 'firebase_utils.dart';

/// Firebase Storage関連の定数 (FSnaming相当)
/// petfooder方式のflavor処理を適用
class FSnaming {
  String flavor = getCollectionPrefix();
  
  // ファイル名
  String get fileMyPet => '${flavor}my_pet';
  String get filePost => '${flavor}post';
  String get fileUser => '${flavor}user';

  // 商品画像 (flavorなし)
  String get fileProduct => 'product';

  // レビュー画像
  String get fileProductReview => '${flavor}product_review';

  // メタデータ
  static const keyMetaUserUid = 'user_uid'; // ユーザーID
  static const keyMetaImageType = 'image/jpeg'; // 画像のタイプ
  static const keyMetaVideoType = 'video/mp4'; // 動画のタイプ
  static const keyMetaCacheControlValue = 'public, max-age=2592000,immutable'; // 30日間キャッシュ　投稿で使用
  static const keyMetaCacheControlValue365 = 'public, max-age=31536000,immutable'; // 365日間キャッシュ 商品画像で使用
}