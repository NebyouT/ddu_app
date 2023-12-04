import 'package:ddu_app/core/app_export.dart';
import 'package:ddu_app/presentation/login_screen/models/login_model.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  Rx<LoginModel> loginModelObj = LoginModel().obs;
}
