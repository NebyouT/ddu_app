import '../stream_page/widgets/stream_item_widget.dart';
import 'controller/stream_controller.dart';
import 'models/stream_item_model.dart';
import 'models/stream_model.dart';
import 'package:ddu_app/core/app_export.dart';
import 'package:flutter/material.dart';

class StreamPage extends StatelessWidget {
  StreamPage({Key? key})
      : super(
          key: key,
        );

  StreamController controller = Get.put(StreamController(StreamModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 17.v),
              _buildStream(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStream() {
    return Expanded(
      child: SizedBox(
        height: 602.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 21.h,
              );
            },
            itemCount:
                controller.streamModelObj.value.streamItemList.value.length,
            itemBuilder: (context, index) {
              StreamItemModel model =
                  controller.streamModelObj.value.streamItemList.value[index];
              return StreamItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
