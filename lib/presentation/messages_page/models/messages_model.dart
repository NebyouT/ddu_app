import '../../../core/app_export.dart';
import 'stories2_item_model.dart';
import 'richardalves_item_model.dart';

/// This class defines the variables used in the [messages_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel {
  Rx<List<Stories2ItemModel>> stories2ItemList = Rx([
    Stories2ItemModel(roy: ImageConstant.imgEllipse15.obs, roy1: "Roy".obs),
    Stories2ItemModel(roy: ImageConstant.imgEllipse22.obs, roy1: "Jordan".obs),
    Stories2ItemModel(
        roy: ImageConstant.imgEllipse24.obs, roy1: "Angeline".obs),
    Stories2ItemModel(
        roy: ImageConstant.imgEllipse26.obs, roy1: "Chrystin".obs),
    Stories2ItemModel(roy: ImageConstant.imgEllipse28.obs, roy1: "Vrindha".obs),
    Stories2ItemModel(roy: ImageConstant.imgEllipse24.obs, roy1: "Vrindha".obs)
  ]);

  Rx<List<RichardalvesItemModel>> richardalvesItemList = Rx([
    RichardalvesItemModel(
        richardAlves: "Richard Alves".obs,
        time: "10:00 AM".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs),
    RichardalvesItemModel(
        richardAlves: "Richard Alves".obs,
        time: "10:00 AM".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs),
    RichardalvesItemModel(
        richardAlves: "Richard Alves".obs,
        time: "10:00 AM".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs),
    RichardalvesItemModel(
        richardAlves: "Richard Alves".obs,
        time: "10:00 AM".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs),
    RichardalvesItemModel(
        richardAlves: "Richard Alves".obs,
        time: "10:00 AM".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs)
  ]);
}
