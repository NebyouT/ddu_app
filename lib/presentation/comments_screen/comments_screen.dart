import '../comments_screen/widgets/commentlist_item_widget.dart';
import 'controller/comments_controller.dart';
import 'models/commentlist_item_model.dart';
import 'package:ddu_app/core/app_export.dart';
import 'package:ddu_app/widgets/custom_icon_button.dart';
import 'package:ddu_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CommentsScreen extends GetWidget<CommentsController> {
  const CommentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgClose,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          onTap: () {
                            onTapImgClose();
                          }),
                      SizedBox(height: 34.v),
                      Text("lbl_comments".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 21.v),
                      _buildCommentList()
                    ])),
            bottomNavigationBar: _buildCommentBox()));
  }

  /// Section Widget
  Widget _buildCommentList() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0.v),
                  child: SizedBox(
                      width: 382.h,
                      child: Divider(
                          height: 2.v,
                          thickness: 2.v,
                          color: theme.colorScheme.secondaryContainer)));
            },
            itemCount: controller
                .commentsModelObj.value.commentlistItemList.value.length,
            itemBuilder: (context, index) {
              CommentlistItemModel model = controller
                  .commentsModelObj.value.commentlistItemList.value[index];
              return CommentlistItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildCommentBox() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 39.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomTextFormField(
                  controller: controller.commentController,
                  hintText: "lbl_write_a_comment".tr,
                  textInputAction: TextInputAction.done,
                  borderDecoration:
                      TextFormFieldStyleHelper.fillSecondaryContainer,
                  fillColor: theme.colorScheme.secondaryContainer)),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(13.h),
                  decoration: IconButtonStyleHelper.fillDeepPurpleATL25,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgGroup9143)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }
}
