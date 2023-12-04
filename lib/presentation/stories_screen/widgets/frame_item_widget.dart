import '../controller/stories_controller.dart';
import '../models/frame_item_model.dart';
import 'package:ddu_app/core/app_export.dart';
import 'package:ddu_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  var controller = Get.find<StoriesController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 147.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 144.v,
            width: 147.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: frameItemModelObj.lIVEWeTheFest!.value,
                    height: 144.v,
                    width: 147.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                CustomElevatedButton(
                  height: 20.v,
                  width: 54.h,
                  text: "lbl_live".tr,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 12.v,
                  ),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 4.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup9027,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                    ),
                  ),
                  buttonTextStyle: CustomTextStyles.labelMediumPrimary,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Obx(
            () => Text(
              frameItemModelObj.lIVEWeTheFest1!.value,
              style: CustomTextStyles.titleSmallBlack90001,
            ),
          ),
          SizedBox(height: 6.v),
          Obx(
            () => Text(
              frameItemModelObj.price!.value,
              style: CustomTextStyles.labelLargeBluegray400,
            ),
          ),
        ],
      ),
    );
  }
}
