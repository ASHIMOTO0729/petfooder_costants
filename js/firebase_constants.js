/**
 * Firebase定数のJavaScript版
 * 
 * Dart版の firebase_constants.dart と完全一致させること
 * この定数ファイルを変更した場合は、Dart版も同期して更新する
 */

// コレクション名の動的生成関数
function getCollectionName(baseName, debug = false) {
    return debug ? `db_${baseName}` : baseName;
}

const FirebaseRealtime = {
    // Realtime Database 基盤
    baseCountPath: 'count',
    baseUserPath: 'user',

    //

    //--------------------------------
    // 投稿カウント
    //--------------------------------
    subPostCount: 'post_count',
    keyPostViewCounts: 'post_view_counts', //視聴数
    keyPostLikeCounts: 'post_like_counts', //いいね数
    keyPostShareCounts: 'post_share_counts', //シェア数
    keyPostCommentCounts: 'post_comment_counts', //コメント数
    //----

    subPostCommentLikeCounts: 'post_comment_like_counts', //コメントいいね数

    //--------------------------------
    // ペットカウント
    //--------------------------------
    subPetCount: 'pet_count',
    keyPetViewCounts: 'pet_post_view_counts', //合計視聴数
    keyPetLikeCounts: 'pet_post_like_counts', //合計投稿いいね数
    keyPetReviewLikeCounts: 'pet_review_like_counts', //合計レビューいいね数

    //--------------------------------
    // ユーザーカウント
    //--------------------------------

    subAccountBan: 'account_ban', //アカウントバン数
    //----
    //カウント
    subUserCount: 'user_count',
    keyUserPostCounts: 'user_post_counts', //投稿数
    keyUserReviewCounts: 'user_review_counts', //レビュー数
    keyUserTicketCounts: 'user_ticket_counts', //チケット枚数

    //簡易アカウント情報(名前とプロフィール画像)
    subUserSimple: 'user_simple',
    keyUserSimpleName: 'user_display_name', //表示名
    keyUserSimpleProfileImage: 'user_profile_image', //プロフィール画像
    keyUserSimpleBio: 'user_bio', //自己紹介
    //----
    //通知の許可
    subUserNotification: 'user_notification',
    keyUserNotificationTopicLikeReview: 'user_notification_like_review',
    keyUserNotificationTopicLikePost: 'user_notification_like_post',
    keyUserNotificationTopicLikePostComment: 'user_notification_like_post_comment',
    keyUserNotificationTopicPostComment: 'user_notification_post_comment',
    keyUserNotificationTopicApp: 'user_notification_app',
    keyUserNotificationTopicAppDebug: 'user_notification_app_debug',
    //----
    //チケット
    subUserTicketLog: 'user_ticket_log',
    keyUserTicketLogGetReviewAd: 'user_ticket_log_get_review_ad', //レビュー広告チケット取得数
    keyUserTicketLogGetReviewNoAd: 'user_ticket_log_get_review_no_ad', //レビュー非広告チケット取得数
    keyUserTicketLogLostPost: 'user_ticket_log_lost_post', //投稿消費チケット数
    keyUserTicketLogGetFirstLogin: 'user_ticket_log_get_first_login', //初回ログインチケット取得数
    //----
    //通知
    subUserNotificationUnreadCounts: 'user_notification_unread_counts', //通知の未読数

    //--------------------------------
    //削除内容
    subDeletingLog: 'deleting_log', //削除された投稿
    keyDeletedAt: 'deleted_at', //削除日時
    keyDeletedDocId: 'deleted_doc_id', //削除された投稿のドキュメントID
    keyDeletedType: 'deleted_type', //削除された投稿のタイプ
    keyDeletedBy: 'deleted_by', //削除した人
    keyDeletedSubDocId: 'deleted_sub_doc_id', //削除された投稿のサブドキュメントID
    keyDeletedFieldKey: 'deleted_field_key', //削除されたフィールドキー

    //--------------------------------
    // もぐ管理
    //--------------------------------
    subHealthRecord: 'health_record',
    keyHealthRecordTypeWeight: 'weight',
    keyHealthRecordTypeMedical: 'medical',
    keyHealthRecordTypeGrooming: 'grooming',
    keyHealthRecordTypeFood: 'food',
        keyHealthRecordTypeProduct: 'product',
    keyHealthRecordTypeOther: 'other',
    keyHealthRecordStoreDocId: 'store_doc_id',
    keyHealthRecordWeight: 'weight',
    keyHealthRecordCost: 'cost',

};

const FirebaseConstants = {
    // 基本的なキー
    keyGetDataAt: 'get_data_at',

    // コレクション名（動的生成）
    collections: {
        user: 'user',
        userDebug: 'db_user',
        userNameMap: 'user_name_map',
        userNameMapDebug: 'db_user_name_map',
        post: 'post',
        postDebug: 'db_post',
        product: 'product',
        productDebug: 'db_product',
        notificationApp: 'notification_app',
        notificationAppDebug: 'db_notification_app',
        report: 'report',
    },

    subCollections: {
        productReviewLog: 'product_review_log',
        fcmToken: 'fcm_token',
        notificationLog: 'notification_log',
        notificationLogApp: 'notification_log_app',
        userLikeList: 'like_list',
        myPetList: 'my_pet_list',
        previewList: 'preview_list',
        reviewList: 'product_review_list',
        postCommentList: 'comment_list',
        productReviewLikeList: 'product_review_like_list',
    },

    // Algolia
    algolia: {
        product: 'product',
        debugProduct: 'db_product',
        resourceMap: 'resource_map'
    },

    // サブコレクション
    subCollections: {
        productReviewList: 'product_review_list',
        fcmToken: 'fcm_token',
        notificationLog: 'notification_log',
        userLikeList: 'like_list',
        myPetList: 'my_pet_list',
        deleteLog: 'delete_log',
        saveLog: 'save_log',
        report: 'report',
        invalidLog: 'invalid_log',
        postCommentList: 'comment_list',
        previewList: 'preview_list',
        healthRecord: 'health_record',
    },

    // 通知関連キー - 最重要: Dart版と完全一致必須
    notification: {
        topic: "topic", // 通知トピック
        title: "title", // 通知タイトル
        id: "id", // 通知ID
        read: "read", // 読み込んだか
        body: "body", // 通知本文
        postDocId: "post_doc_id", // 投稿のドキュメントID
        toUid: "to_user_uid", // 通知先のユーザーUID
        isView: "isView", // 閲覧したか
        image: "image", // 通知画像
        status: "status", // 通知ステータス



        postDocId: "post_doc_id", // 投稿のドキュメントID
        postCommentId: "post_comment_id", // 投稿コメントのドキュメントID
        postCommentHostUid: "post_comment_host_uid", // 投稿コメントのホストUID
        postCommentReplyUserUid: "post_comment_reply_user_uid", // 投稿コメントの返信先のユーザーUID
        postCommentContent: "post_comment_content", // 投稿コメントの本文
        postCommentReplyTo: "post_comment_reply_to", // 投稿コメントの返信先のユーザーUID
        postCommentTargetUserUid: "post_comment_target_user_uid", // 投稿コメントの返信先のユーザーUID

        createdAt: "created_at", // 通知作成日時
        updatedAt: "updated_at", // 通知更新日時
        appRead: "notification_app_read", // 運営通知のステータス
        notViewCount: "not_view_count", // 未読通知数


        //運営通知関連キー  
        topicLikeReview: "user_notification_like_review", // いいねのトピック
        topicLikePost: "user_notification_like_post", // 投稿いいねのトピック
        topicLikePostComment: "user_notification_like_post_comment", // 投稿コメントいいねのトピック

        topicPostComment: "user_notification_post_comment", // 投稿コメントのトピック
        topicApp: "user_notification_app", // 運営のトピック
    },

    // 通知トピック - 最重要: 3プロジェクト間で完全一致が必要
    notificationTopics: {
        likeReview: "user_notification_like_review", // いいねのトピック
        likePost: "user_notification_like_post", // 投稿いいねのトピック
        likePostComment: "user_notification_like_post_comment", // 投稿コメントいいねのトピック

        postComment: "user_notification_post_comment", // 投稿コメントのトピック
        app: "user_notification_app", // 運営のトピック
        userUID: "user_uid", // 運営通知ドキュメントID
        fcmToken: "fcm_token", // 運営通知ドキュメントID
    },

    // ペット関連
    pet: {
        name: 'pet_name',
        birthday: 'pet_birthday',
        personality: 'pet_personality',
        category: 'pet_category',
        type: 'pet_type',
        imageURL: 'pet_image_url',
        gender: 'pet_gender',
        weight: 'pet_weight',
        size: 'pet_size',
        id: 'pet_id',
        docId: 'pet_doc_id',
        totalLikeReview: 'pet_total_like_review',
        totalLikePost: 'pet_total_like_post',
        totalViewPost: 'pet_total_view_post',
        expirationDate: 'pet_expiration_date',
        overview: 'pet_overview',
        cardColor: 'pet_card_color',
        status: 'status'
    },

    // 商品関連
    product: {
        name: 'product_name',
        id: 'product_id',
        info: 'product_info',
        imageURL: 'product_image_url',
        officialURL: 'product_official_url',
        petType: 'product_pet_type',
        foodTypeID: 'product_food_type_id',
        brand0ID: 'product_brand_no0_id',
        brand1ID: 'product_brand_no1_id',
        brand2ID: 'product_brand_no2_id',
        petSizeIDList: 'product_food_petsiz_id_list',
        containerTypeID: 'product_container_type_id',
        originCountry: 'product_origin_country',
        metabolismEnergy: 'product_metabolism_energy',
        guaranteedIngredients: 'product_guaranteed_ingredients',
        otherIngredients: 'product_other_ingredients',
        ingredients: 'product_ingredients',
        purposeID: 'product_purpose_id',
        specialPurpose0ID: 'product_special_purpose_no0_id',
        specialPurpose1ID: 'product_special_purpose_no1_id',
        specialPurpose2ID: 'product_special_purpose_no2_id',
        specialPurpose3ID: 'product_special_purpose_no3_id',
        specialPurpose4ID: 'product_special_purpose_no4_id',
        specialPurpose5ID: 'product_special_purpose_no5_id',
        specialPurpose6ID: 'product_special_purpose_no6_id',
        specialPurpose7ID: 'product_special_purpose_no7_id',
        specialPurpose8ID: 'product_special_purpose_no8_id',
        specialPurpose9ID: 'product_special_purpose_no9_id',
        specialPurpose10ID: 'product_special_purpose_no10_id',
        specialPurpose11ID: 'product_special_purpose_no11_id',
        specialPurpose12ID: 'product_special_purpose_no12_id',
        specialPurpose13ID: 'product_special_purpose_no13_id',
        specialPurpose14ID: 'product_special_purpose_no14_id',
        specialPurpose15ID: 'product_special_purpose_no15_id',
        foodAgeID: 'product_food_age_id',
        foodAgeIDList: 'product_food_age_id_list',
        totalReview: 'product_total_review',
        countReview: 'product_count_review',
        repeat: 'product_repeat',
        feedingScore: 'product_feeding_score',
        feedingDuration: 'product_feeding_duration',
        personalityPopular: 'product_personality_popular',
        categoryList: "product_category_list",
        personalityList: "product_personality_list", // ペットの性格リスト

        price: 'product_price',
        shopURL: 'shop_url',
        display: 'product_display',
        makerURL: 'product_maker_url'
    },
    review: {
        // レビュー関連キー
        title: "review_title", // レビュータイトル
        body: "review_body", // レビュー本文
        rating: "review_rating", // レビュー評価
        id: "review_id", // レビューID
        imageURL: "review_image_url",
        docId: "review_doc_id", // レビューのドキュメントID
        like: "review_like", // レビューいいね数
        feedingScore: "review_feeding_score", // レビューの食いつき度
        price: "review_price", // レビューの価格
        repeat: "review_repeat", // レビューのリピート
        noRepeat: "review_no_repeat", // レビューのリピートしない理由
        feedingDuration: "review_feeding_duration", // レビュー与えた期間

        // いいね関連キー
        dogLikeList: "dog_product_review_like_list", // 犬のレビューいいねリスト
        catLikeList: "cat_product_review_like_list", // 猫のレビューいいねリスト
        postLikeList: "post_like_list", // 投稿のいいねリスト
        feedingDurationList: "review_feeding_duration_list", // レビューの与えた期間リスト
        feedingScoreList: "review_feeding_score_list", // レビューの食いつき度リスト
        ratingList: "review_rating_list", // レビューの評価リスト
        repeatList: "review_repeat_list", // レビューのリピートリスト
        priceList: "review_price_list", // レビューの価格リスト

    },
    post: {
        docId: "post_doc_id", // 投稿のドキュメントID
        description: "description", // 投稿の説明
        uploadStatus: "upload_status", // 投稿のアップロード状態
        status: "status", // 投稿の公開状態
        tags: "tags", // 投稿のタグ
        language: "language", // 投稿の言語
        aspectRatio: "aspect_ratio", // 投稿のメディアアスペクト比
        authorUid: "author_uid", // 投稿の作者のユーザーID
        petId: "pet_id", // 投稿のペットのペットID

        likeCount: "like_count", // 投稿のいいね数
        commentCount: "comment_count", // 投稿のコメント数
        shareCount: "share_count", // 投稿のシェア数
        viewCount: "view_count", // 投稿の閲覧数
        isFlagged: "is_flagged", // 投稿が通報されているか
        flaggedReason: "flagged_reason", // 投稿が通報された理由
        thumbnailUrl: "thumbnail_url", // 投稿のサムネイルURL
        videoUrl: "video_url", // 投稿の動画URL
        videoDuration: "video_duration", // 投稿の動画の長さ
        bgmId: "bgm_id", // 投稿のBGMのID
        bgmVol: "bgm_vol", // 投稿のBGMの名前
        vol: "vol", // 投稿の音量
        snsURL: "sns_url", // SNSURL

        //加工前メディア
        beforeImage: "before_image", // 投稿の加工前画像
        beforeVideo: "before_video", // 投稿の加工前動画

        //加工済みメディア
        afterImage: "after_image", // 投稿の加工済み画像
        afterVideo: "after_video", // 投稿の加工済み動画

        //投稿コメント
        commentDocId: "post_comment_doc_id", // 投稿コメントのドキュメントID
        commentKey: "post_comment_key", // コメント固有のkey
        commentId: "post_comment_id", // コメントID 親コメントのKeyをハッシュ 親コメントからリプライまで一貫して使用
        commentHostUid: "post_comment_host_uid", // コメント投稿者参照
        commentReplyUserUid: "post_comment_reply_user_uid", // コメント返信先参照
        commentContent: "post_comment_content", // メンションタグを含む本文
        commentMentions: "post_comment_mentions", // 通知・メンション解析用 UID 一覧
        commentLikeCount: "post_comment_like_count", // コメントいいね高速表示
        commentReplyCount: "post_comment_reply_count", // UI に「◯件の返信」を即表示
        commentReplyTo: "post_comment_reply_to", // スレッド先 ID（null なら親コメント）
        commentTargetUserUid: "post_comment_target_user_uid", // コメントの返信先
        commentCreatedAt: "created_at", // コメント作成日時
        commentUpdatedAt: "updated_at", // コメント更新日時
    },


    // ユーザー情報
    // ユーザー情報
    user: {
        //ユーザー情報キー
        uid: "uid", // ユーザーのUID
        id: "user_id", // ユーザーのユーザーID
        postList: "user_post_list", // ユーザーの投稿リスト
        accountBan: "account_ban", // アカウントバン
        userList: "user_list", // ユーザーのリスト
    },

    device: {
        //デバイス情報キー
        uploadDevice: "upload_device", // 投稿のアップロードデバイス
        uploadOS: "upload_os", // 投稿のアップロードOS
        uploadOSVersion: "upload_os_version", // 投稿のアップロードOSバージョン

    },

    // 共通
    common: {
        createdAt: 'created_at',
        updatedAt: 'updated_at',
        displayFlag: 'display_flag',
        metadata: 'metadata',
        ttl: 'ttl'
    },

    //--------------------------------
    // もぐ管理
    //--------------------------------
    healthRecord: {
        id: 'id',
        docId: 'doc_id',
        petDocId: 'pet_doc_id',
        type: 'type',
        title: 'title',
        petDocId: 'pet_doc_id',
        userUid: 'uid',
        date: 'date',
        weight: 'weight',
        cost: 'cost',
        facilityName: 'facility_name',
        memo: 'memo',
        imageUrls: 'image_urls',
        tags: 'tags',
        metadata: 'metadata',
        location: 'location',
        doctorName: 'doctor_name',
        nextVisitDate: 'next_visit_date',
        reminderDate: 'reminder_date',
        isReminder: 'is_reminder',
        locationLat: 'location_lat',
        locationLng: 'location_lng',
        createdAt: 'created_at',
        updatedAt: 'updated_at',


    }


};

const StorageConstants = {
    fileMyPet: 'my_pet',
    filePost: 'post',
    filePostDB: 'db_post',
    fileUser: 'user',
    fileProduct: 'product',
    fileProductReview: 'product_review',
    fileNotificationApp: 'notification_app',
    fileNotificationDBApp: 'db_notification_app',
    fileHealthRecordDB: 'db_health_record',
    fileHealthRecord: 'health_record',
}

// Firebase Functions用の定数
const FunctionConstants = {
    // Function名
    sendAppNotification: 'sendAppNotification',

    // sendAppNotification関数のパラメータ名
    params: {
        title: 'title',
        body: 'body',
        image: 'image',
        debug: 'debug'
    },

    // sendAppNotification関数のレスポンス名
    response: {
        success: 'success',
        message: 'message'
    }
};


module.exports = {
    FirebaseConstants,
    FunctionConstants,
    StorageConstants,
    getCollectionName,
    FirebaseRealtime
};