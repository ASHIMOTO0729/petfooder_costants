import 'firebase_utils.dart';

/// Firebase関連の定数を一元管理するクラス
///
/// petfood_development, petfooder, Firebase Functions間で共有される
/// すべての定数はここで管理し、他のプロジェクトで重複定義しない
/// petfooder方式のflavor処理を採用
class FDBnaming {
  String flavor = getCollectionPrefix();
  static const keyGetDataAt = 'get_data_at';
  static const keyGetProfileAt = 'get_profile_at';
  static const keyGetCountAt = 'get_count_at';

  // コレクション名 (petfooder方式: flavor prefix適用)
  String get collectionUser => '${flavor}user';
  String get collectionUserDebug => 'db_user'; // 明示的にdb_
  String get collectionPost => '${flavor}post';
  String get collectionPostDebug => 'db_post'; // 明示的にdb_
  String get collectionProduct => '${flavor}product'; // petfooder方式
  String get collectionProductDebug => 'db_product';
  String get collectionReport => '${flavor}report'; // petfooderにある
  String get collectionNotificationApp => '${flavor}notification_app'; // petfooder方式
  String get collectionNotificationAppDebug => 'db_notification_app';
  String get collectionLog => 'log';
  String get collectionUserNameMap => '${flavor}user_name_map';
  String get collectionUserNameMapDebug => 'db_user_name_map';

  // Algolia
  static const collectionAlgoliaProduct = 'product';
  static const collectionAlgoliaDebugProduct = 'db_product';
  static const collectionResourceMap = 'resource_map';

  // サブコレクション
  static const subCollectionProductReviewList = 'product_review_list';
  static const subCollectionFCMToken = 'fcm_token';
  static const subCollectionNotificationLog = 'notification_log';
  static const subCollectionNotificationLogApp = 'notification_log_app';
  static const subCollectionUserLikeList = 'like_list';
  static const subCollectionMyPetList = 'my_pet_list';
  static const subCollectionDeleteLog = 'delete_log';
  static const subCollectionSaveLog = 'save_log';
  static const subCollectionReport = 'report';
  static const subCollectionInvalidLog = 'invalid_log';
  static const subCollectionPostCommentList = 'comment_list';
  static const subCollectionPreviewList = 'preview_list';

  // サブサブコレクション
  static const subSubCollectionProductReviewLikeList = 'product_review_like_list';

  // ペット関連
  static const keyPetName = 'pet_name';
  static const keyPetBirthDay = 'pet_birthday';
  static const keyPetPersonality = 'pet_personality';
  static const keyPetCategory = 'pet_category';
  static const keyPetType = 'pet_type';
  static const keyPetImageURL = 'pet_image_url';
  static const keyPetGender = 'pet_gender';
  static const keyPetWeight = 'pet_weight';
  static const keyPetSize = 'pet_size';
  static const keyPetId = 'pet_id';
  static const keyPetDocId = 'pet_doc_id';
  static const kyePetExpirationDate = "pet_expiration_date";
  static const kyePetOverview = "pet_overview";
  static const kyePetCardColor = "pet_card_color";

  // Algolia商品データ
  static const keyAlgoliaProductName = 'title';
  static const keyAlgoliaProductDocID = 'productDocID';

  // 商品関連
  static const keyProductName = 'product_name';
  static const keyProductId = 'product_id';
  static const keyProductInfo = 'product_info';
  static const keyProductImageURL = 'product_image_url';
  static const keyProductOfficialURL = 'product_official_url';
  static const keyProductPetType = 'product_pet_type';
  static const keyProductFoodTypeID = 'product_food_type_id';
  static const keyProductBrand0ID = 'product_brand_no0_id';
  static const keyProductBrand1ID = 'product_brand_no1_id';
  static const keyProductBrand2ID = 'product_brand_no2_id';
  static const keyProductPetSizeIDList = 'product_food_petsiz_id_list';
  static const keyProductContainerTypeID = 'product_container_type_id';
  static const keyProductOriginCountry = 'product_origin_country';
  static const keyProductMetabolismEnergy = 'product_metabolism_energy';
  static const keyProductGuaranteedIngredients = 'product_guaranteed_ingredients';
  static const keyProductOtherIngredients = 'product_other_ingredients';
  static const keyProductIngredients = 'product_ingredients';
  static const keyProductPurposeID = 'product_purpose_id';
  static const keyProductSpecialPurpose0ID = 'product_special_purpose_no0_id';
  static const keyProductSpecialPurpose1ID = 'product_special_purpose_no1_id';
  static const keyProductSpecialPurpose2ID = 'product_special_purpose_no2_id';
  static const keyProductSpecialPurpose3ID = 'product_special_purpose_no3_id';
  static const keyProductSpecialPurpose4ID = 'product_special_purpose_no4_id';
  static const keyProductSpecialPurpose5ID = 'product_special_purpose_no5_id';
  static const keyProductSpecialPurpose6ID = 'product_special_purpose_no6_id';
  static const keyProductSpecialPurpose7ID = 'product_special_purpose_no7_id';
  static const keyProductSpecialPurpose8ID = 'product_special_purpose_no8_id';
  static const keyProductSpecialPurpose9ID = 'product_special_purpose_no9_id';
  static const keyProductSpecialPurpose10ID = 'product_special_purpose_no10_id';
  static const keyProductSpecialPurpose11ID = 'product_special_purpose_no11_id';
  static const keyProductSpecialPurpose12ID = 'product_special_purpose_no12_id';
  static const keyProductSpecialPurpose13ID = 'product_special_purpose_no13_id';
  static const keyProductSpecialPurpose14ID = 'product_special_purpose_no14_id';
  static const keyProductSpecialPurpose15ID = 'product_special_purpose_no15_id';
  static const keyProductFoodAgeID = 'product_food_age_id';
  static const keyProductFoodAgeIDList = 'product_food_age_id_list';
  static const keyProductTotalReview = 'product_total_review';
  static const keyProductCountReview = 'product_count_review';
  static const keyProductRepeat = 'product_repeat';
  static const keyProductFeedingScore = 'product_feeding_score';
  static const keyProductFeedingDuration = 'product_feeding_duration';
  static const keyPrpductPersonalityPopular = 'product_personality_popular';
  static const keyProductPrice = 'product_price';
  static const keyShopURL = 'shop_url';
  static const keyProductDisplay = 'product_display';
  static const keyProductMakerURL = 'product_maker_url';

  // レビュー関連
  static const keyReviewRatingList = 'review_rating_list';
  static const keyReviewFeedingScoreList = 'review_feeding_score_list';
  static const keyReviewFeedingDurationList = 'review_feeding_duration_list';
  static const keyReviewPriceList = 'review_price_list';
  static const keyReviewRepeatList = 'review_repeat_list';
  static const keyReviewTitle = 'review_title';
  static const keyReviewBody = 'review_body';
  static const keyReviewImageURL = 'review_image_url';
  static const keyReviewRating = 'review_rating';
  static const keyReviewFeedingScore = 'review_feeding_score';
  static const keyReviewPrice = 'review_price';
  static const keyReviewRepeat = 'review_repeat';
  static const keyReviewNoRepeat = 'review_no_repeat';
  static const keyReviewFeedingDuration = 'review_feeding_duration';
  static const keyReviewId = 'review_id';
  static const keyReviewDocId = 'review_doc_id';
  static const keyReviewLike = 'review_like';
  static const keyPostLikeList = 'post_like_list';

  // ログ関連
  static const keyLog = 'logs';
  static const keyLogDateTime = 'log_date_time';
  static const keyActionType = 'action_type';
  static const keyActionName = 'action_name';
  static const keyActionAddMyPet = 'addMyPet';
  static const keyActionUpdateMyPet = 'updateMyPet';
  static const keyActionDeleteMyPet = 'deleteMyPet';
  static const keyActionUpdateTicket = 'updateTicket';
  static const keyActionSaveReview = 'saveReview';
  static const keyActionDeleteReview = 'deleteReview';
  static const keyActionDeleteAccount = 'deleteAccount';
  static const keyActionUpdateUserInfo = 'updateUserInfo';
  static const keyActionReport = 'report';

  // 通知関連 - 重要: この部分が3プロジェクト間で統一される
  static const keyNotificationTopic = 'topic';
  static const keyNotificationRead = 'read';
  static const keyNotificationIsView = 'isView';
  static const keyNotificationTitle = 'title';
  static const keyNotificationBody = 'body';
  static const keyNotificationImage = 'image';
  static const keyNotificationID = 'id';
  static const keyNotificationStatus = 'status';
  static const keyNotificationCreatedAt = 'created_at';
  static const keyNotificationUpdatedAt = 'updated_at';
  static const keyNotificationAppRead = 'notification_app_status';
  static const keyNotificationIsRead = 'isRead';

  // 投稿コメント関連
  static const keyNotificationPostDocId = 'post_doc_id';
  static const keyNotificationPostCommentId = 'post_comment_id';
  static const keyNotificationPostCommentHostUid = 'post_comment_host_uid';
  static const keyNotificationPostCommentReplyUserUid = 'post_comment_reply_user_uid';
  static const keyNotificationPostCommentContent = 'post_comment_content';
  static const keyNotificationPostCommentReplyTo = 'post_comment_reply_to';

  // カテゴリーリスト
  static const keyCategoryCategories = 'categories';
  static const keyCategoryCatFoodBrand = 'catFoodBrand';
  static const keyCategoryCatFoodBrandReverse = 'catFoodBrandReverse';
  static const keyCategoryCatFoodMaker = 'catFoodMaker';
  static const keyCategoryCatFoodMakerReverse = 'catFoodMakerReverse';
  static const keyCategoryDogFoodBrand = 'dogFoodBrand';
  static const keyCategoryDogFoodBrandReverse = 'dogFoodBrandReverse';
  static const keyCategoryDogFoodMaker = 'dogFoodMaker';
  static const keyCategoryDogFoodMakerReverse = 'dogFoodMakerReverse';
  static const keyCategoryFoodPurpose = 'foodPurpose';
  static const keyCategoryFoodPurposeReverse = 'foodPurposeReverse';
  static const keyCategoryFoodSpecialPurpose = 'foodSpecialPurpose';
  static const keyCategoryFoodSpecialPurposeReverse = 'foodSpecialPurposeReverse';
  static const keyCategoryFoodContainerType = 'foodContainerType';
  static const keyCategoryFoodContainerTypeReverse = 'foodContainerTypeReverse';
  static const keyCategoryFoodTypes = 'foodTypes';
  static const keyCategoryFoodTypesReverse = 'foodTypesReverse';
  static const keyCategoryFoodCatAge = 'foodCatAge';
  static const keyCategoryFoodCatAgeReverse = 'foodCatAgeReverse';
  static const keyCategoryFoodDogAge = 'foodDogAge';
  static const keyCategoryFoodDogAgeReverse = 'foodDogAgeReverse';
  static const keyCategoryFoodPetSize = 'foodPetSize';
  static const keyCategoryFoodPetSizeReverse = 'foodPetSizeReverse';
  static const keyCategoryFoodAgeIDList = 'foodAgeIDList';
  static const keyCategoryFoodAgeIDListReverse = 'foodAgeIDListReverse';
  static const keyCategoryPetWeight = 'petWeight';
  static const keyCategoryPetType = 'petType';
  static const keyCategoryPetGender = 'petGender';
  static const keyCategoryPetDogSize = 'petDogSize';
  static const keyCategoryPetCatSize = 'petCatSize';
  static const keyCategoryRepeatList = 'repeatList';
  static const keyCategoryDogSuperSmallCategory = 'dogSuperSmallCategory';
  static const keyCategoryDogSuperSmallCategoryReverse = 'dogSuperSmallCategoryReverse';
  static const keyCategoryDogSmallCategory = 'dogSmallCategory';
  static const keyCategoryDogSmallCategoryReverse = 'dogSmallCategoryReverse';
  static const keyCategoryDogMediumCategory = 'dogMediumCategory';
  static const keyCategoryDogMediumCategoryReverse = 'dogMediumCategoryReverse';
  static const keyCategoryDogLargeCategory = 'dogLargeCategory';
  static const keyCategoryDogLargeCategoryReverse = 'dogLargeCategoryReverse';
  static const keyCategoryCatCategory = 'catCategory';
  static const keyCategoryCatCategoryReverse = 'catCategoryReverse';
  static const keyCategoryPersonality = 'personality';
  static const keyCategoryPersonalityReverse = 'personalityReverse';
  static const keyCategoryExpirationDate = 'expirationDate';
  static const keyCategoryExpirationDateReverse = 'expirationDateReverse';
  static const keyCategoryData = 'data';
  static const keyCategoryUpdatedAt = 'category_updated_at';

  // 通報関連
  static const keyReportType = 'report_type';
  static const keyReportContent = 'report_content';
  static const keyReportUserUid = 'report_user_uid';
  static const keyReportPetDocId = 'report_pet_doc_id';
  static const keyReportReviewDocId = 'report_review_doc_id';
  static const keyReportPostDocId = 'report_post_doc_id';
  static const keyReportProductDocId = 'report_product_doc_id';
  static const keyReportTargetUid = 'report_target_uid';
  static const keyReportTargetName = 'report_target_name';
  static const keyReportTargetTitle = 'report_target_title';
  static const keyReportTargetContent = 'report_target_content';

  // ユーザー情報
  static const keyUserUid = 'uid';
  static const keyUserId = 'user_id';
  static const keyUserList = 'user_list';
  static const keyUserPostPreviewList = 'user_post_preview_list';
  static const keyUserReviewPreviewList = 'user_review_preview_list';

  // デバイス情報
  static const keyDevice = 'device';
  static const keyOS = 'os';
  static const keyPlatform = 'platform';

  // 投稿関連
  static const keyPostDocId = 'post_doc_id';
  static const keyPostDescription = 'description';
  static const keyPostTags = 'tags';
  static const keyPostLanguage = 'language';
  static const keyPostAspectRatio = 'aspect_ratio';
  static const keyPostAuthorUid = 'author_uid';
  static const keyPostPetDocIdList = 'pet_docid_list';
  static const keyPostStatus = 'status';
  static const keyPostUploadStatus = 'upload_status';
  static const keyPostIsFlagged = 'is_flagged';
  static const keyPostFlaggedReason = 'flagged_reason';
  static const keyPostBgmId = 'bgm_id';
  static const keyPostSnsURL = 'sns_url';
  static const keyPostUserInfo = 'user_info';
  static const keyPostPreviewDocId = 'post_preview_doc_id';
  static const keyPostPreviewKey = 'post_preview_key';
  static const keyPostMediaInfo = 'media_info';
  static const keyPostBeforeVideoThumbnail = 'before_video_thumbnail';
  static const keyPostThumbnailUrl = 'thumbnail_url';
  static const keyPostMediaUrl = 'media_url';
  static const keyPostRotation = 'rotation';
  static const keyPostScale = 'scale';
  static const keyPostRelativeOffsetdx = 'relative_offset_dx';
  static const keyPostRelativeOffsetdy = 'relative_offset_dy';
  static const keyPostMediaTypes = 'media_types';
  static const keyPostCommentList = 'post_comment_list';
  static const keyPostCommentDocId = 'post_comment_doc_id';
  static const keyPostCommnetKey = 'post_comment_key';
  static const keyPostCommentId = 'post_comment_id';
  static const keyPostCommentHostUid = 'post_comment_host_uid';
  static const keyPostCommentContent = 'post_comment_content';
  static const keyPostCommentMentions = 'post_comment_mentions';
  static const keyPostCommentReplyUserUid = 'post_comment_reply_user_uid';
  static const keyPostCommentReplyTo = 'post_comment_reply_to';
  static const keyPostCommentTargetUserUid = 'post_comment_target_user_uid';
  static const keyPostCommentCreatedAt = 'created_at';
  static const keyPostCommentUpdatedAt = 'updated_at';

  // 追加/更新日時
  static const keyCreatedAt = 'created_at';
  static const keyUpdatedAt = 'updated_at';

  // メタデータ
  static const keyMetadata = 'metadata';
}

/// Firebase Config関連の定数管理クラス
/// アプリの設定フラグやメンテナンス状態を管理
class FCnaming {
  static const keyPostAvailable = 'isPost_Available'; // 投稿可能か
  static const keySearchAvailable = 'isSearch_Available'; // 検索可能か
  static const keyAppInMaintenance = 'isApp_InMaintenance'; // アプリがメンテナンス中か
}
