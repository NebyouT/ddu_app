import '../../../core/app_export.dart';
import 'stream_item_model.dart';

/// This class defines the variables used in the [stream_page],
/// and is typically used to hold data that is passed between different parts of the application.
class StreamModel {
  Rx<List<StreamItemModel>> streamItemList = Rx([
    StreamItemModel(
        twentySeven: ImageConstant.img27.obs,
        rosalia: "Rosalia".obs,
        duration: "45 minutes ago".obs,
        rosalia1: "Rosalia".obs,
        duration1: "45 minutes ago".obs)
  ]);
}
