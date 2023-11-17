import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:workshala_csi/core/app_export.dart';
import 'package:workshala_csi/widgets/custom_checkbox_button.dart';
import 'package:workshala_csi/widgets/custom_elevated_button.dart';
import 'package:workshala_csi/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;


import '../../widgets/validator.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberme = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> onTapLogIn(BuildContext context) async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    // Validate email and password
    String emailValidationMessage = validateEmail(email);
    String passwordValidationMessage = validatePassword(password);

    if (emailValidationMessage.isNotEmpty || passwordValidationMessage.isNotEmpty) {
      // Show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(emailValidationMessage.isNotEmpty
              ? emailValidationMessage
              : passwordValidationMessage),
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }

    // Make a POST request to your login API
    try {
      final response = await http.post(
        Uri.parse('https://workshala-7v7q.onrender.com/login'),
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        // API call successful, continue with the login logic
        Map<String, dynamic> responseData = jsonDecode(response.body);
        // Handle the response data as needed
        print('Login successful');
        Navigator.pushNamed(context, AppRoutes.profileScreen);
      } else {
        // API call failed, show an error message
        print('Login failed: ${response.statusCode}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login failed. Please try again.'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    } catch (error) {
      // Handle exceptions, e.g., network issues
      print('Error during login: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('An error occurred. Please try again later.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
    // Continue with the login logic
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 19.h, vertical: 19.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroupOrange300,
                          height: 135.v,
                          width: 163.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 78.h)),
                      SizedBox(height: 20.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 42.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "WORK",
                                        style: CustomTextStyles
                                            .displaySmallPrimary_1),
                                    TextSpan(
                                        text: "SHALA",
                                        style: theme.textTheme.displaySmall)
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 10.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 51.h),
                              child: Text("Log in to your account",
                                  style: CustomTextStyles
                                      .titleLargeInterBlack900))),
                      SizedBox(height: 36.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Email",
                                        style: CustomTextStyles
                                            .titleMediumInterGray80001Medium),
                                    TextSpan(
                                        text: "*",
                                        style: CustomTextStyles
                                            .titleMediumInterRedA700)
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: CustomTextFormField(
                              controller: emailController,
                              hintText: "Enter your mail")),
                      SizedBox(height: 19.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Password",
                                        style: CustomTextStyles
                                            .titleMediumInterGray80001Medium),
                                    TextSpan(
                                        text: "*",
                                        style: CustomTextStyles
                                            .titleMediumInterRedA700)
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: CustomTextFormField(
                              controller: passwordController,
                              hintText: "Password",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true)),
                      SizedBox(height: 25.v),
                      _buildRememberme(context),
                      SizedBox(height: 15.v),
                      CustomElevatedButton(
                          height: 45.v,
                          text: "Log in",
                          margin: EdgeInsets.only(left: 8.h, right: 4.h),
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientPrimaryToDeepPurpleFcDecoration,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumInterWhiteA700,
                          onPressed: () {
                            onTapLogIn(context);
                          }),
                      SizedBox(height: 17.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtForgotThePassword(context);
                          },
                          child: Text("Forgot the password?",
                              style: CustomTextStyles.titleSmallInterPrimary)),
                      SizedBox(height: 24.v),
                      Text("or continue with",
                          style:
                              CustomTextStyles.titleSmallInterBlack900Medium15),
                      SizedBox(height: 12.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGoogle,
                                height: 24.v,
                                width: 23.h),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle3170,
                                height: 23.v,
                                width: 24.h,
                                margin: EdgeInsets.only(left: 14.h))
                          ]),
                      SizedBox(height: 58.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtDonthaveanaccount(context);
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Don’t have an account?",
                                    style: CustomTextStyles
                                        .titleSmallInterOnPrimaryContainer),
                                TextSpan(text: "   "),
                                TextSpan(
                                    text: "Sign up",
                                    style: CustomTextStyles
                                        .titleSmallInterPrimaryMedium)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 7.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildRememberme(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 26.h),
            child: CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text: "Remember me",
                value: rememberme,
                onChange: (value) {
                  rememberme = value;
                })));
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotThePassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  /// Navigates to the registerNowScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerNowScreen);
  }
}

