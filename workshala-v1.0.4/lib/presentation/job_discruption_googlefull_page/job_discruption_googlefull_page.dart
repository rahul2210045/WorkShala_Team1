import '../job_discruption_googlefull_page/widgets/thirtyone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:workshala/core/app_export.dart';
import 'package:workshala/widgets/custom_elevated_button.dart';

class JobDiscruptionGooglefullPage extends StatefulWidget {
  const JobDiscruptionGooglefullPage({Key? key}) : super(key: key);

  @override
  JobDiscruptionGooglefullPageState createState() =>
      JobDiscruptionGooglefullPageState();
}

class JobDiscruptionGooglefullPageState
    extends State<JobDiscruptionGooglefullPage>
    with AutomaticKeepAliveClientMixin<JobDiscruptionGooglefullPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 16.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Text("Job Description:",
                                        style: CustomTextStyles
                                            .titleMediumPoppinsBlack90018)),
                                SizedBox(height: 10.v),
                                _buildJobDescriptionView(context),
                                SizedBox(height: 9.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.h, right: 54.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle3182,
                                          height: 275.v,
                                          width: 33.h),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 5.h,
                                              top: 16.v,
                                              bottom: 8.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "Medical / Health Insurance",
                                                    style: theme
                                                        .textTheme.bodyMedium),
                                                SizedBox(height: 26.v),
                                                Text(
                                                    "Medical, Prescription, or VIsion Plans",
                                                    style: theme
                                                        .textTheme.bodyMedium),
                                                SizedBox(height: 25.v),
                                                Text("Performance Bonus",
                                                    style: theme
                                                        .textTheme.bodyMedium),
                                                SizedBox(height: 23.v),
                                                Text("Paid sick leave",
                                                    style: theme
                                                        .textTheme.bodyMedium),
                                                SizedBox(height: 27.v),
                                                Text("Paid vacation leave",
                                                    style: theme
                                                        .textTheme.bodyMedium),
                                                SizedBox(height: 28.v),
                                                Text(
                                                    "Transportation allowances",
                                                    style: theme
                                                        .textTheme.bodyMedium)
                                              ]))
                                    ])),
                                SizedBox(height: 17.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 21.h),
                                    child: Text("Required Skills:",
                                        style: CustomTextStyles
                                            .titleMediumPoppinsBlack90018)),
                                SizedBox(height: 15.v),
                                _buildCreativeThinkingRow(context),
                                SizedBox(height: 24.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Text("About:",
                                        style: CustomTextStyles
                                            .titleMediumPoppinsBlack90018)),
                                SizedBox(height: 8.v),
                                Container(
                                    width: 308.h,
                                    margin:
                                        EdgeInsets.only(left: 3.h, right: 27.h),
                                    child: Text(
                                        "Google LLC is an American multinational technology company that focuses on search engine technology, online advertising, cloud computing.. computer software, quantum computing. e- commerce, artificial intelligence, and consumer electronics",
                                        maxLines: 6,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium)),
                                SizedBox(height: 18.v),
                                CustomElevatedButton(
                                    height: 45.v,
                                    text: "Apply",
                                    margin:
                                        EdgeInsets.only(left: 7.h, right: 13.h),
                                    buttonStyle:
                                        CustomButtonStyles.fillPrimaryTL16,
                                    buttonTextStyle: CustomTextStyles
                                        .titleMediumPoppinsWhiteA700,
                                    onPressed: () {
                                      onTapApply(context);
                                    },
                                    alignment: Alignment.center)
                              ])))
                ])))));
  }

  /// Section Widget
  Widget _buildJobDescriptionView(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 27.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 72.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 5.adaptSize,
                        width: 5.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                            borderRadius: BorderRadius.circular(2.h))),
                    SizedBox(height: 39.v),
                    Container(
                        height: 5.adaptSize,
                        width: 5.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                            borderRadius: BorderRadius.circular(2.h))),
                    SizedBox(height: 20.v),
                    Container(
                        height: 5.adaptSize,
                        width: 5.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                            borderRadius: BorderRadius.circular(2.h))),
                    SizedBox(height: 38.v),
                    Container(
                        height: 5.adaptSize,
                        width: 5.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                            borderRadius: BorderRadius.circular(2.h))),
                    SizedBox(height: 108.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            height: 5.adaptSize,
                            width: 5.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.blueGray100,
                                borderRadius: BorderRadius.circular(2.h)))),
                    SizedBox(height: 20.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            height: 5.adaptSize,
                            width: 5.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.blueGray100,
                                borderRadius: BorderRadius.circular(2.h)))),
                    SizedBox(height: 19.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            height: 5.adaptSize,
                            width: 5.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.blueGray100,
                                borderRadius: BorderRadius.circular(2.h)))),
                    SizedBox(height: 39.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            height: 5.adaptSize,
                            width: 5.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.blueGray100,
                                borderRadius: BorderRadius.circular(2.h))))
                  ])),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 301.h,
                        child: Text(
                            "Able to run design sprint to deliver the best user experience based on research.\nAble to lead a team, delegate, & initiative.\nAble to mold the junior designer to strategize how certain feature needs to be collected.\nAble to aggregate and be data minded on the decision that's taking place.",
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium)),
                    SizedBox(height: 16.v),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text("Minimum Qualifications:",
                            style:
                                CustomTextStyles.titleMediumPoppinsBlack90018)),
                    SizedBox(height: 22.v),
                    Container(
                        width: 288.h,
                        margin: EdgeInsets.only(left: 1.h, right: 11.h),
                        child: Text(
                            "Experience as UI/UX Designer for 2+ years.\nUse platform Figma. Sketch, and Miro.\nAbility to analyze and convert numerical design sprints into UI/UX\nHave experience in relevant B2C user centric products perviously.",
                            maxLines: 7,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium)),
                    SizedBox(height: 15.v),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text("Perks and Benefits:",
                            style:
                                CustomTextStyles.titleMediumPoppinsBlack90018))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildCreativeThinkingRow(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 7.h),
        child: IntrinsicWidth(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Wrap(
                  runSpacing: 16.v,
                  spacing: 16.h,
                  children: List<Widget>.generate(
                      4, (index) => ThirtyoneItemWidget())),
              Container(
                  width: 97.h,
                  margin: EdgeInsets.only(left: 3.h, bottom: 44.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 2.v),
                  decoration: AppDecoration.outlinePrimary1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12),
                  child: Text("Layout",
                      style: CustomTextStyles.bodyLargePoppinsPrimary))
            ])));
  }

  /// Navigates to the uploadCvScreen when the action is triggered.
  onTapApply(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.uploadCvScreen);
  }
}
