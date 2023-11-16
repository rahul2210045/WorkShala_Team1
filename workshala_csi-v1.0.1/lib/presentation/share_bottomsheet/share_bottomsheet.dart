import 'package:flutter/material.dart';
import 'package:workshala_csi/core/app_export.dart';

class ShareBottomsheet extends StatelessWidget {
  const ShareBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return _buildScrollView(context);
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(right: 1.h),
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder43),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              GestureDetector(
                  onTap: () {
                    onTapView(context);
                  },
                  child: Container(
                      height: 10.v,
                      width: 101.h,
                      decoration: BoxDecoration(
                          color: appTheme.gray500,
                          borderRadius: BorderRadius.circular(5.h)))),
              SizedBox(height: 47.v),
              Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgWhatsapp,
                            height: 48.v,
                            width: 52.h,
                            margin: EdgeInsets.only(bottom: 3.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgFrame,
                            height: 48.v,
                            width: 52.h,
                            margin: EdgeInsets.only(top: 3.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgFrame48x52,
                            height: 48.v,
                            width: 52.h,
                            margin: EdgeInsets.only(bottom: 3.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgGroupWhiteA700,
                            height: 48.v,
                            width: 52.h,
                            margin: EdgeInsets.only(bottom: 3.v))
                      ])),
              SizedBox(height: 42.v),
              Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFrameWhiteA700,
                            height: 48.v,
                            width: 52.h,
                            radius: BorderRadius.circular(15.h),
                            margin: EdgeInsets.only(bottom: 12.v)),
                        Spacer(flex: 50),
                        CustomImageView(
                            imagePath: ImageConstant.imgTelegram,
                            height: 48.v,
                            width: 52.h,
                            radius: BorderRadius.circular(15.h),
                            margin: EdgeInsets.only(bottom: 12.v)),
                        Spacer(flex: 50),
                        Container(
                            width: 60.adaptSize,
                            padding: EdgeInsets.symmetric(
                                horizontal: 9.h, vertical: 1.v),
                            decoration: AppDecoration.fillBlue.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder14),
                            child: Text("in",
                                style: CustomTextStyles
                                    .displayMediumRobotoWhiteA700)),
                        CustomImageView(
                            imagePath: ImageConstant.imgMessages,
                            height: 48.v,
                            width: 52.h,
                            margin: EdgeInsets.only(left: 29.h, bottom: 12.v))
                      ])),
              SizedBox(height: 50.v)
            ])));
  }

  /// Navigates to the jobDiscruptionGooglefullTabContainerScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.splashScreen);
  }
}
