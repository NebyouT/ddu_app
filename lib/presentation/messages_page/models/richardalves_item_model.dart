import '../../../core/app_export.dart';

/// This class is used in the [richardalves_item_widget] screen.
class RichardalvesItemModel {
  RichardalvesItemModel({
    this.richardAlves,
    this.time,
    this.heyBroWhereAre,
    this.id,
  }) {
    richardAlves = richardAlves ?? Rx("Richard Alves");
    time = time ?? Rx("10:00 AM");
    heyBroWhereAre = heyBroWhereAre ?? Rx("Hey bro, where are you?");
    id = id ?? Rx("");
  }

  Rx<String>? richardAlves;

  Rx<String>? time;

  Rx<String>? heyBroWhereAre;

  Rx<String>? id;
}
