import '../controller/stream_controller.dart';
import '../models/stream_item_model.dart';
import 'package:ddu_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StreamItemWidget extends StatelessWidget {
  StreamItemWidget(
    this.streamItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StreamItemModel streamItemModelObj;

  var controller = Get.find<StreamController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 356.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: streamItemModelObj.twentySeven!.value,
              height: 540.v,
              width: 356.h,
              radius: BorderRadius.circular(
                15.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 12.v),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse11,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          streamItemModelObj.rosalia!.value,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Obx(
                        () => Text(
                          streamItemModelObj.duration!.value,
                          style: CustomTextStyles.bodyMediumBluegray400,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse11,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          streamItemModelObj.rosalia1!.value,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Obx(
                        () => Text(
                          streamItemModelObj.duration1!.value,
                          style: CustomTextStyles.bodyMediumBluegray400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
