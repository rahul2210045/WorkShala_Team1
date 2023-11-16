import 'package:flutter/material.dart';
import 'package:workshala/core/app_export.dart';
import 'package:workshala/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class JobDiscruptionGooglePage extends StatefulWidget {
  const JobDiscruptionGooglePage({Key? key})
      : super(
          key: key,
        );

  @override
  JobDiscruptionGooglePageState createState() =>
      JobDiscruptionGooglePageState();
}

class JobDiscruptionGooglePageState extends State<JobDiscruptionGooglePage>
    with AutomaticKeepAliveClientMixin<JobDiscruptionGooglePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  right: 20.h,
                ),
                child: Column(
                  children: [
                    _buildFullTimeStack(context),
                    SizedBox(height: 96.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child: Text(
                          "Job Description:",
                          style: CustomTextStyles.titleSmallBlack90015,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.v),
                    _buildApplyRow(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullTimeStack(BuildContext context) {
    return SizedBox(
      height: 335.v,
      width: 323.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 80.v),
              child: Text(
                "-",
                style: CustomTextStyles.titleSmallBlack900Medium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(right: 5.h),
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillSecondaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder43,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle3177,
                    height: 88.v,
                    width: 77.h,
                    radius: BorderRadius.circular(
                      30.h,
                    ),
                    margin: EdgeInsets.only(right: 105.h),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(right: 63.h),
                    child: Text(
                      "UI/UX Designer",
                      style: CustomTextStyles.titleLargePoppinsBlack900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 103.h),
                    child: Text(
                      "Google LLC",
                      style: CustomTextStyles.titleSmallBlue800,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Divider(
                    color: appTheme.blueGray100,
                    indent: 4.h,
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(right: 54.h),
                    child: Text(
                      "California, United States",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(right: 50.h),
                    child: Text(
                      "10,000-25,000/month",
                      style: CustomTextStyles.bodyMediumPrimary15,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(right: 43.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomElevatedButton(
                          width: 92.h,
                          text: "Full Time",
                        ),
                        CustomElevatedButton(
                          width: 90.h,
                          text: "Onsite",
                          margin: EdgeInsets.only(left: 18.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Padding(
                    padding: EdgeInsets.only(right: 40.h),
                    child: Text(
                      "Posted 10 Days ago, ends in 25 Dec.",
                      style: CustomTextStyles.labelMediumPoppinsBlack900,
                    ),
                  ),
                  SizedBox(height: 8.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 5.v,
            bottom: 93.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 6.v,
                width: 5.h,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray100,
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray100,
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 33.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 6.v,
                  width: 5.h,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray100,
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Column(
            children: [
              Container(
                width: 313.h,
                margin: EdgeInsets.only(
                  left: 3.h,
                  right: 4.h,
                ),
                child: Text(
                  "Able to run design sprint to deliver the best user experience based on research.\nAble to lead a team, delegate, & initiative.\nAble to mold the junior designer to strategize how certain feature needs to be collected.\nAble to aggregate and be data minded on the decision that's taking place.",
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallPoppinsBlack900,
                ),
              ),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                height: 45.v,
                text: "Apply",
                buttonStyle: CustomButtonStyles.fillPrimaryTL16,
                buttonTextStyle: CustomTextStyles.titleMediumPoppinsWhiteA700,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
