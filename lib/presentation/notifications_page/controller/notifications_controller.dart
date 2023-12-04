import 'package:ddu_app/core/app_export.dart';
import 'package:ddu_app/presentation/notifications_page/models/notifications_model.dart';

/// A controller class for the NotificationsPage.
///
/// This class manages the state of the NotificationsPage, including the
/// current notificationsModelObj
class NotificationsController extends GetxController {
  NotificationsController(this.notificationsModelObj);

  Rx<NotificationsModel> notificationsModelObj;
}
