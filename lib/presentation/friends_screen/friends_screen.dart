import '../friends_screen/widgets/follow_item_widget.dart';
import '../friends_screen/widgets/twitter_item_widget.dart';
import 'controller/friends_controller.dart';
import 'models/follow_item_model.dart';
import 'models/twitter_item_model.dart';
import 'package:ddu_app/core/app_export.dart';
import 'package:ddu_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:ddu_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ddu_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ddu_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class FriendsScreen extends GetWidget<FriendsController> {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_friends".tr,
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 13.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: CustomSearchView(
                                  controller: controller.searchController,
                                  hintText: "lbl_search".tr,
                                  alignment: Alignment.center))),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_connect_to_your".tr,
                              style: CustomTextStyles
                                  .titleLargeDeeppurpleA200Bold)),
                      SizedBox(height: 28.v),
                      _buildTwitter(),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_recommeded".tr,
                              style: CustomTextStyles
                                  .titleLargeDeeppurpleA200Bold)),
                      SizedBox(height: 16.v),
                      _buildFollow()
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPersonAddAlt1,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
              onTap: () {
                onTapPersonAddAltOne();
              })
        ]);
  }

  /// Section Widget
  Widget _buildTwitter() {
    return SizedBox(
        height: 50.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h, right: 106.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 30.h);
            },
            itemCount:
                controller.friendsModelObj.value.twitterItemList.value.length,
            itemBuilder: (context, index) {
              TwitterItemModel model =
                  controller.friendsModelObj.value.twitterItemList.value[index];
              return TwitterItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildFollow() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.5.v),
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                              height: 2.v,
                              thickness: 2.v,
                              color: theme.colorScheme.secondaryContainer)));
                },
                itemCount: controller
                    .friendsModelObj.value.followItemList.value.length,
                itemBuilder: (context, index) {
                  FollowItemModel model = controller
                      .friendsModelObj.value.followItemList.value[index];
                  return FollowItemWidget(model);
                }))));
  }

  /// Navigates to the previous screen.
  onTapArrowBack() {
    Get.back();
  }

  /// Opens a URL in the device's default web browser.
  ///
  /// The [context] parameter is the `BuildContext` of the widget that invoked the function.
  ///
  /// Throws an exception if the URL could not be launched.
  onTapPersonAddAltOne() async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
