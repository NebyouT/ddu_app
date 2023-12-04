import 'package:ddu_app/core/app_export.dart';
import 'package:ddu_app/presentation/stories_screen/models/stories_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the StoriesScreen.
///
/// This class manages the state of the StoriesScreen, including the
/// current storiesModelObj
class StoriesController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<StoriesModel> storiesModelObj = StoriesModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
