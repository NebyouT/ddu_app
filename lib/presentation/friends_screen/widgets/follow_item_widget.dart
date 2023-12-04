import '../controller/friends_controller.dart';
import '../models/follow_item_model.dart';
import 'package:ddu_app/core/app_export.dart';
import 'package:ddu_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FollowItemWidget extends StatelessWidget {
  FollowItemWidget(
    this.followItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FollowItemModel followItemModelObj;

  var controller = Get.find<FriendsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 5.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: followItemModelObj.kevinAllsrub!.value,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
              margin: EdgeInsets.only(
                left: 2.h,
                bottom: 8.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    followItemModelObj.kevinAllsrub1!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 6.v),
                Obx(
                  () => Text(
                    followItemModelObj.yourEFriendsOn!.value,
                    style: CustomTextStyles.bodyMediumBluegray700,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomOutlinedButton(
            width: 76.h,
            text: "lbl_follow".tr,
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 16.v,
            ),
          ),
        ],
      ),
    );
  }
}
