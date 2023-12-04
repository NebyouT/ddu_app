import 'package:ddu_app/core/app_export.dart';
import 'package:ddu_app/presentation/stories_and_tweets_screen/models/stories_and_tweets_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the StoriesAndTweetsScreen.
///
/// This class manages the state of the StoriesAndTweetsScreen, including the
/// current storiesAndTweetsModelObj
class StoriesAndTweetsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<StoriesAndTweetsModel> storiesAndTweetsModelObj =
      StoriesAndTweetsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
