import 'package:ddu_app/core/app_export.dart';
import 'package:ddu_app/presentation/detailed_profile_screen/models/detailed_profile_model.dart';

/// A controller class for the DetailedProfileScreen.
///
/// This class manages the state of the DetailedProfileScreen, including the
/// current detailedProfileModelObj
class DetailedProfileController extends GetxController {
  Rx<DetailedProfileModel> detailedProfileModelObj = DetailedProfileModel().obs;
}
