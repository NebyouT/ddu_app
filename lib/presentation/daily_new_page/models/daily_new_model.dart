import '../../../core/app_export.dart';
import 'profiles1_item_model.dart';
import 'forty_item_model.dart';

/// This class defines the variables used in the [daily_new_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DailyNewModel {
  Rx<List<Profiles1ItemModel>> profiles1ItemList = Rx([
    Profiles1ItemModel(
        nineteen: ImageConstant.img19.obs, agnessMonica: "Agness Monica".obs),
    Profiles1ItemModel(nineteen: ImageConstant.img19179x147.obs),
    Profiles1ItemModel(
        nineteen: ImageConstant.img191.obs, agnessMonica: "Windy Wandah".obs)
  ]);

  Rx<List<FortyItemModel>> fortyItemList = Rx([
    FortyItemModel(forty: ImageConstant.img40.obs),
    FortyItemModel(forty: ImageConstant.img34.obs)
  ]);
}
