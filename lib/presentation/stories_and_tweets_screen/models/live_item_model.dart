import '../../../core/app_export.dart';

/// This class is used in the [live_item_widget] screen.
class LiveItemModel {
  LiveItemModel({
    this.send,
    this.newPost,
    this.id,
  }) {
    send = send ?? Rx(ImageConstant.imgSend);
    newPost = newPost ?? Rx("New Post");
    id = id ?? Rx("");
  }

  Rx<String>? send;

  Rx<String>? newPost;

  Rx<String>? id;
}
