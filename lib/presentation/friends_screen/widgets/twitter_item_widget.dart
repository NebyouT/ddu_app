import '../controller/friends_controller.dart';
import '../models/twitter_item_model.dart';
import 'package:ddu_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TwitterItemWidget extends StatelessWidget {
  TwitterItemWidget(
    this.twitterItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwitterItemModel twitterItemModelObj;

  var controller = Get.find<FriendsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: Obx(
        () => CustomImageView(
          imagePath: twitterItemModelObj.twitter!.value,
          height: 50.adaptSize,
          width: 50.adaptSize,
        ),
      ),
    );
  }
}
