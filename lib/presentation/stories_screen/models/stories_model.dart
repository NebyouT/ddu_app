import '../../../core/app_export.dart';
import 'stories1_item_model.dart';
import 'frame_item_model.dart';

/// This class defines the variables used in the [stories_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StoriesModel {
  Rx<List<Stories1ItemModel>> stories1ItemList = Rx([
    Stories1ItemModel(roy: ImageConstant.imgEllipse15.obs, roy1: "Roy".obs),
    Stories1ItemModel(roy: ImageConstant.imgEllipse22.obs, roy1: "Jordan".obs),
    Stories1ItemModel(
        roy: ImageConstant.imgEllipse26.obs, roy1: "Chrystin".obs),
    Stories1ItemModel(roy: ImageConstant.imgEllipse28.obs, roy1: "Vrindha".obs),
    Stories1ItemModel(roy1: "Angeline".obs)
  ]);

  Rx<List<FrameItemModel>> frameItemList = Rx([
    FrameItemModel(
        lIVEWeTheFest: ImageConstant.img19144x147.obs,
        lIVEWeTheFest1: "LIVE - We The Fest".obs,
        price: "19 : 00 | Forg Stadium".obs),
    FrameItemModel(
        lIVEWeTheFest1: "Merry New Year".obs,
        price: "21 : 00 | Latuna Beach".obs),
    FrameItemModel(
        lIVEWeTheFest1: "Blue Loyal Party".obs,
        price: "19 : 35 | Latuna Beach".obs)
  ]);
}
