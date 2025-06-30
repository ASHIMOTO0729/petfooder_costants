/// Firebase Functions関連の定数
/// 
/// Firebase Functions（JavaScript）で使用される定数名と値の定義
/// JavaScript側とDart側で完全一致させるためのマッピング
class FunctionNaming {
  // Function名
  static const sendAppNotification = 'sendAppNotification';
  
  // sendAppNotification関数のパラメータ名
  static const sendAppNotificationtitle = 'title';
  static const sendAppNotificationBody = 'body';
  static const sendAppNotificationImage = 'image';
  static const sendAppNotificationDebug = 'debug';
  
  // sendAppNotification関数のレスポンス名
  static const sendAppNotificationSuccess = 'success';
  static const sendAppNotificationMessage = 'message';
}