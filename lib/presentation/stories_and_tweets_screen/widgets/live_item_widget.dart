import '../controller/stories_and_tweets_controller.dart';
import '../models/live_item_model.dart';
import 'package:ddu_app/core/app_export.dart';
import 'package:ddu_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LiveItemWidget extends StatelessWidget {
  LiveItemWidget(
    this.liveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LiveItemModel liveItemModelObj;

  var controller = Get.find<StoriesAndTweetsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            Obx(
              () => CustomIconButton(
                height: 64.adaptSize,
                width: 64.adaptSize,
                padding: EdgeInsets.all(15.h),
                decoration: IconButtonStyleHelper.fillDeepPurpleATL32,
                child: CustomImageView(
                  imagePath: liveItemModelObj.send!.value,
                ),
              ),
            ),
            SizedBox(height: 9.v),
            Obx(
              () => Text(
                liveItemModelObj.newPost!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
