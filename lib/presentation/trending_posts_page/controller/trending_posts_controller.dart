import 'package:ddu_app/core/app_export.dart';
import 'package:ddu_app/presentation/trending_posts_page/models/trending_posts_model.dart';

/// A controller class for the TrendingPostsPage.
///
/// This class manages the state of the TrendingPostsPage, including the
/// current trendingPostsModelObj
class TrendingPostsController extends GetxController {
  TrendingPostsController(this.trendingPostsModelObj);

  Rx<TrendingPostsModel> trendingPostsModelObj;
}
