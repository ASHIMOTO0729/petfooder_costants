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
        log: 'log'
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
        notificationLogApp: 'notification_log_app',
        userLikeList: 'like_list',
        myPetList: 'my_pet_list',
        deleteLog: 'delete_log',
        saveLog: 'save_log',
        report: 'report',
        invalidLog: 'invalid_log',
        postCommentList: 'comment_list',
        previewList: 'preview_list'
    },

    // 通知関連キー - 最重要: Dart版と完全一致必須
    notification: {
        topic: 'topic',
        read: 'read',
        isView: 'isView',
        title: 'title',
        body: 'body',
        image: 'image',
        id: 'id',
        status: 'status',
        createdAt: 'created_at',
        updatedAt: 'updated_at',
        notViewCount: 'not_view_count',
        appRead: 'notification_app_status',
        isRead: 'isRead'
    },

    // 通知トピック - 最重要: 3プロジェクト間で完全一致が必要
    notificationTopics: {
        likeReview: 'user_notification_like_review',
        likePost: 'user_notification_like_post',
        likePostComment: 'user_notification_like_post_comment',
        postComment: 'user_notification_post_comment',
        app: 'user_notification_app',
        appDebug: 'user_notification_app_debug'
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
        cardColor: 'pet_card_color'
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
        price: 'product_price',
        shopURL: 'shop_url',
        display: 'product_display',
        makerURL: 'product_maker_url'
    },

    // ユーザー情報
    user: {
        displayName: 'display_name',
        iconURL: 'icon_url',
        bio: 'bio',
        postCount: 'post_count',
        reviewCount: 'review_count',
        uid: 'uid',
        ticket: 'user_ticket',
        accountBan: 'account_ban',
        id: 'user_id'
    },

    // 共通
    common: {
        createdAt: 'created_at',
        updatedAt: 'updated_at'
    }
};

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
    getCollectionName
};