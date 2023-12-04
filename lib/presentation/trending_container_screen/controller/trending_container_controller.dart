import 'package:ddu_app/core/app_export.dart';
import 'package:ddu_app/presentation/trending_container_screen/models/trending_container_model.dart';

/// A controller class for the TrendingContainerScreen.
///
/// This class manages the state of the TrendingContainerScreen, including the
/// current trendingContainerModelObj
class TrendingContainerController extends GetxController {
  Rx<TrendingContainerModel> trendingContainerModelObj =
      TrendingContainerModel().obs;
}
