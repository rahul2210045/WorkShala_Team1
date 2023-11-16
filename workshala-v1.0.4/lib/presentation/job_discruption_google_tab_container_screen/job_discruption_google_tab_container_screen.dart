import 'package:flutter/material.dart';
import 'package:workshala/core/app_export.dart';
import 'package:workshala/presentation/job_discruption_google_page/job_discruption_google_page.dart';
import 'package:workshala/widgets/app_bar/custom_app_bar.dart';

class JobDiscruptionGoogleTabContainerScreen extends StatefulWidget {
  const JobDiscruptionGoogleTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  JobDiscruptionGoogleTabContainerScreenState createState() =>
      JobDiscruptionGoogleTabContainerScreenState();
}

class JobDiscruptionGoogleTabContainerScreenState
    extends State<JobDiscruptionGoogleTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  late TabController group34Controller;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              _buildGroup34(context),
              _buildTabBarView(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 53.v,
      centerTitle: true,
      title: Container(
        height: 24.v,
        width: 288.h,
        child: TabBar(
          controller: tabviewController,
          labelPadding: EdgeInsets.zero,
          tabs: [
            Tab(
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowLeftBlack900,
                height: 13.v,
                width: 7.h,
                margin: EdgeInsets.only(
                  top: 8.v,
                  bottom: 3.v,
                ),
              ),
            ),
            Tab(
              child: CustomImageView(
                imagePath: ImageConstant.imgIconLove,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            Tab(
              child: CustomImageView(
                imagePath: ImageConstant.imgSearchBlack900,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(bottom: 3.v),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup34(BuildContext context) {
    return SizedBox(
      height: 27.v,
      width: 318.h,
      child: TabBar(
        controller: group34Controller,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.blue800,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.black900,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        indicatorColor: appTheme.blue800,
        tabs: [
          Tab(
            child: Text(
              "Job Description",
            ),
          ),
          Tab(
            child: Text(
              "Minimum Qualifications",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 279.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          JobDiscruptionGooglePage(),
          JobDiscruptionGooglePage(),
          JobDiscruptionGooglePage(),
          JobDiscruptionGooglePage(),
          JobDiscruptionGooglePage(),
        ],
      ),
    );
  }
}
