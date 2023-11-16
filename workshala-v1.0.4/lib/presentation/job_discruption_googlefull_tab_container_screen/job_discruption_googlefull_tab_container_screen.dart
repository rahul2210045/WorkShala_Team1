import 'package:flutter/material.dart';
import 'package:workshala/core/app_export.dart';
import 'package:workshala/presentation/job_discruption_google_page/job_discruption_google_page.dart';
import 'package:workshala/widgets/app_bar/appbar_leading_image.dart';
import 'package:workshala/widgets/app_bar/appbar_trailing_image.dart';
import 'package:workshala/widgets/app_bar/custom_app_bar.dart';
import 'package:workshala/widgets/custom_elevated_button.dart';
import 'package:workshala/presentation/share_bottomsheet/share_bottomsheet.dart';

class JobDiscruptionGooglefullTabContainerScreen extends StatefulWidget {
  const JobDiscruptionGooglefullTabContainerScreen({Key? key})
      : super(key: key);

  @override
  JobDiscruptionGooglefullTabContainerScreenState createState() =>
      JobDiscruptionGooglefullTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class JobDiscruptionGooglefullTabContainerScreenState
    extends State<JobDiscruptionGooglefullTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 15.v),
                    child: Column(children: [
                      _buildFullTime(context),
                      SizedBox(height: 41.v),
                      _buildTabview(context),
                      SizedBox(
                          height: 1146.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                JobDiscruptionGooglePage(),
                                JobDiscruptionGooglePage()
                              ]))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 36.h, top: 25.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconLove,
              margin: EdgeInsets.only(left: 26.h, top: 16.v, right: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearchBlack900,
              margin: EdgeInsets.fromLTRB(14.h, 18.v, 42.h, 2.v),
              onTap: () {
                onTapSearch(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildFullTime(BuildContext context) {
    return SizedBox(
        height: 335.v,
        width: 323.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 80.v),
                  child: Text("-",
                      style: CustomTextStyles.titleSmallBlack900Medium))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(right: 5.h),
                  padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 8.v),
                  decoration: AppDecoration.fillSecondaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder43),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            height: 116.v,
                            width: 152.h,
                            margin: EdgeInsets.only(right: 68.h),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle3177,
                                      height: 88.v,
                                      width: 77.h,
                                      radius: BorderRadius.circular(30.h),
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(left: 29.h)),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text("UI/UX Designer",
                                          style: CustomTextStyles
                                              .titleLargePoppinsBlack900))
                                ])),
                        Padding(
                            padding: EdgeInsets.only(right: 102.h),
                            child: Text("Google LLC",
                                style: CustomTextStyles
                                    .titleMediumPoppinsBlue800)),
                        SizedBox(height: 10.v),
                        Divider(color: appTheme.blueGray100),
                        SizedBox(height: 9.v),
                        Padding(
                            padding: EdgeInsets.only(right: 59.h),
                            child: Text("California, United States",
                                style: theme.textTheme.titleSmall)),
                        SizedBox(height: 12.v),
                        Padding(
                            padding: EdgeInsets.only(right: 55.h),
                            child: Text("10,000-25,000/month",
                                style: CustomTextStyles.bodyMediumPrimary15)),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(right: 45.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomElevatedButton(
                                      width: 92.h, text: "Full Time"),
                                  CustomElevatedButton(
                                      width: 90.h,
                                      text: "Onsite",
                                      margin: EdgeInsets.only(left: 20.h))
                                ])),
                        SizedBox(height: 32.v),
                        Padding(
                            padding: EdgeInsets.only(right: 45.h),
                            child: Text("Posted 10 Days ago, ends in 25 Dec.",
                                style: CustomTextStyles
                                    .labelMediumPoppinsBlack900)),
                        SizedBox(height: 8.v)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 32.v,
        width: 327.h,
        child: TabBar(
            controller: tabviewController,
            isScrollable: true,
            labelColor: appTheme.blue800,
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: appTheme.black900,
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            indicatorColor: appTheme.blue800,
            tabs: [
              Tab(child: Text("Job Description")),
              Tab(child: Text("Minimum Qualifications"))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Shows a modal bottom sheet with [ShareBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapSearch(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ShareBottomsheet(),
        isScrollControlled: true);
  }
}
