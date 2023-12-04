import '../../../core/app_export.dart';

/// This class is used in the [stream_item_widget] screen.
class StreamItemModel {
  StreamItemModel({
    this.twentySeven,
    this.rosalia,
    this.duration,
    this.rosalia1,
    this.duration1,
    this.id,
  }) {
    twentySeven = twentySeven ?? Rx(ImageConstant.img27);
    rosalia = rosalia ?? Rx("Rosalia");
    duration = duration ?? Rx("45 minutes ago");
    rosalia1 = rosalia1 ?? Rx("Rosalia");
    duration1 = duration1 ?? Rx("45 minutes ago");
    id = id ?? Rx("");
  }

  Rx<String>? twentySeven;

  Rx<String>? rosalia;

  Rx<String>? duration;

  Rx<String>? rosalia1;

  Rx<String>? duration1;

  Rx<String>? id;
}
