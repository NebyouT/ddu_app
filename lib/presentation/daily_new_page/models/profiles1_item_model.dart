import '../../../core/app_export.dart';

/// This class is used in the [profiles1_item_widget] screen.
class Profiles1ItemModel {
  Profiles1ItemModel({
    this.nineteen,
    this.agnessMonica,
    this.id,
  }) {
    nineteen = nineteen ?? Rx(ImageConstant.img19);
    agnessMonica = agnessMonica ?? Rx("Agness Monica");
    id = id ?? Rx("");
  }

  Rx<String>? nineteen;

  Rx<String>? agnessMonica;

  Rx<String>? id;
}
