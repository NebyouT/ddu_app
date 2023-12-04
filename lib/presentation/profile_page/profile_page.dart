import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:ddu_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillPrimary,
                child: Column(children: [
                  SizedBox(height: 13.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgLink,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 16.h)),
                  SizedBox(height: 37.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                          onTap: () {
                            onTapProfileDetails();
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse1480x80,
                                    height: 80.adaptSize,
                                    width: 80.adaptSize,
                                    radius: BorderRadius.circular(40.h)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.h, top: 11.v, bottom: 4.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_rosalia".tr,
                                              style: CustomTextStyles
                                                  .headlineLargeBlack90001),
                                          SizedBox(height: 8.v),
                                          Text("lbl_rose23".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBluegray400)
                                        ]))
                              ])))),
                  SizedBox(height: 26.v),
                  _buildCounts(),
                  SizedBox(height: 26.v),
                  _buildMenu(),
                  SizedBox(height: 24.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildPost(
                          rosalia: "lbl_rosalia".tr,
                          duration: "lbl_35_minutes_ago".tr,
                          mostPeopleNever: "msg_most_people_never".tr,
                          zipcode: "lbl_2200".tr,
                          eightHundred: "lbl_800".tr)),
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildPost(
                          rosalia: "lbl_rosalia".tr,
                          duration: "lbl_35_minutes_ago".tr,
                          mostPeopleNever: "msg_most_people_never".tr,
                          zipcode: "lbl_2200".tr,
                          eightHundred: "lbl_800".tr))
                ]))));
  }

  /// Section Widget
  Widget _buildCounts() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(children: [
            Text("lbl_post".tr, style: CustomTextStyles.titleLargeGray500),
            SizedBox(height: 10.v),
            Text("lbl_75".tr, style: CustomTextStyles.titleLargeDeeppurpleA200)
          ]),
          _buildFollowers(
              followers: "lbl_following".tr, zipcode: "lbl_3400".tr),
          _buildFollowers(followers: "lbl_followers".tr, zipcode: "lbl_6500".tr)
        ]));
  }

  /// Section Widget
  Widget _buildMenu() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 16.v),
        decoration: AppDecoration.fillGray,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMenu,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgPlayCircleOutline,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgQueueMusic,
              height: 40.adaptSize,
              width: 40.adaptSize)
        ]));
  }

  /// Common widget
  Widget _buildFollowers({
    required String followers,
    required String zipcode,
  }) {
    return Column(children: [
      Text(followers,
          style: CustomTextStyles.titleLargeGray500
              .copyWith(color: appTheme.gray500)),
      SizedBox(height: 10.v),
      Text(zipcode,
          style: CustomTextStyles.titleLargeDeeppurpleA200
              .copyWith(color: appTheme.deepPurpleA200))
    ]);
  }

  /// Common widget
  Widget _buildPost({
    required String rosalia,
    required String duration,
    required String mostPeopleNever,
    required String zipcode,
    required String eightHundred,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse211,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    radius: BorderRadius.circular(25.h)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 3.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(rosalia,
                              style: CustomTextStyles.titleMedium18
                                  .copyWith(color: theme.colorScheme.primary)),
                          SizedBox(height: 4.v),
                          Text(duration,
                              style: CustomTextStyles.labelMediumBluegray100
                                  .copyWith(color: appTheme.blueGray100))
                        ])),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgGroup8916,
                    height: 6.v,
                    width: 30.h,
                    margin: EdgeInsets.symmetric(vertical: 22.v))
              ]),
              SizedBox(height: 18.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: 332.h,
                      margin: EdgeInsets.only(right: 17.h),
                      child: Text(mostPeopleNever,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargePrimary.copyWith(
                              color: theme.colorScheme.primary,
                              height: 1.50)))),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 17.v,
                            width: 19.h,
                            margin: EdgeInsets.only(top: 5.v, bottom: 3.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 6.v, bottom: 3.v),
                            child: Text(zipcode,
                                style: theme.textTheme.bodySmall!.copyWith(
                                    color: theme.colorScheme.primary))),
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorPrimary,
                            height: 18.v,
                            width: 19.h,
                            margin: EdgeInsets.only(
                                left: 29.h, top: 4.v, bottom: 3.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 7.v, bottom: 2.v),
                            child: Text(eightHundred,
                                style: theme.textTheme.bodySmall!.copyWith(
                                    color: theme.colorScheme.primary))),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup9078,
                            height: 25.v,
                            width: 54.h)
                      ]))
            ]));
  }

  /// Navigates to the detailedProfileScreen when the action is triggered.
  onTapProfileDetails() {
    Get.toNamed(
      AppRoutes.detailedProfileScreen,
    );
  }
}
