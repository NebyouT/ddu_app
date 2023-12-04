import 'package:ddu_app/core/app_export.dart';
import 'package:ddu_app/presentation/account_view_screen/models/account_view_model.dart';

/// A controller class for the AccountViewScreen.
///
/// This class manages the state of the AccountViewScreen, including the
/// current accountViewModelObj
class AccountViewController extends GetxController {
  Rx<AccountViewModel> accountViewModelObj = AccountViewModel().obs;
}
