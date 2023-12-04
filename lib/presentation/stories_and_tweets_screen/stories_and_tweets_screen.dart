import '../stories_and_tweets_screen/widgets/frame1_item_widget.dart';
import '../stories_and_tweets_screen/widgets/live_item_widget.dart';
import 'controller/stories_and_tweets_controller.dart';
import 'models/frame1_item_model.dart';
import 'models/live_item_model.dart';
import 'package:ddu_app/core/app_export.dart';
import 'package:ddu_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:ddu_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:ddu_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class StoriesAndTweetsScreen extends GetWidget<StoriesAndTweetsController> {
  const StoriesAndTweetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 32.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_stories".tr,
                              style: theme.textTheme.headlineSmall))),
                  SizedBox(height: 19.v),
                  _buildLIVE(),
                  SizedBox(height: 22.v),
                  _buildFrame()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_search".tr,
            controller: controller.searchController),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgGroup9086,
              margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v))
        ]);
  }

  /// Section Widget
  Widget _buildLIVE() {
    return SizedBox(
        height: 89.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .storiesAndTweetsModelObj.value.liveItemList.value.length,
            itemBuilder: (context, index) {
              LiveItemModel model = controller
                  .storiesAndTweetsModelObj.value.liveItemList.value[index];
              return LiveItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0.v),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                          height: 2.v,
                          thickness: 2.v,
                          color: theme.colorScheme.secondaryContainer)));
            },
            itemCount: controller
                .storiesAndTweetsModelObj.value.frame1ItemList.value.length,
            itemBuilder: (context, index) {
              Frame1ItemModel model = controller
                  .storiesAndTweetsModelObj.value.frame1ItemList.value[index];
              return Frame1ItemWidget(model);
            })));
  }
}
