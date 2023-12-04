import '../../../core/app_export.dart';

/// This class is used in the [twitter_item_widget] screen.
class TwitterItemModel {
  TwitterItemModel({
    this.twitter,
    this.id,
  }) {
    twitter = twitter ?? Rx(ImageConstant.imgTwitterBlue500);
    id = id ?? Rx("");
  }

  Rx<String>? twitter;

  Rx<String>? id;
}
