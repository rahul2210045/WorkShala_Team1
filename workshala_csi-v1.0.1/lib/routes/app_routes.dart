import 'package:flutter/material.dart';
import 'package:workshala_csi/presentation/homepage_container_screen/homepage_container_screen.dart';
import 'package:workshala_csi/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:workshala_csi/presentation/settings_screen/settings_screen.dart';
import 'package:workshala_csi/presentation/splash_screen/splash_screen.dart';
import 'package:workshala_csi/presentation/welcome_screen/welcome_screen.dart';
import 'package:workshala_csi/presentation/register_now_screen/register_now_screen.dart';
import 'package:workshala_csi/presentation/login_screen/login_screen.dart';
import 'package:workshala_csi/presentation/categories_screen/categories_screen.dart';
import 'package:workshala_csi/presentation/uploading_cv_screen/uploading_cv_screen.dart';
import 'package:workshala_csi/presentation/uploaded_cv_screen/uploaded_cv_screen.dart';
import 'package:workshala_csi/presentation/android_large_one_screen/android_large_one_screen.dart';
import 'package:workshala_csi/presentation/profile_screen/profile_screen.dart';
import 'package:workshala_csi/presentation/job_discruption_google_tab_container_screen/job_discruption_google_tab_container_screen.dart';
import 'package:workshala_csi/presentation/job_discruption_googlefull_tab_container_screen/job_discruption_googlefull_tab_container_screen.dart';
import 'package:workshala_csi/presentation/upload_cv_screen/upload_cv_screen.dart';
import 'package:workshala_csi/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String loginScreen = '/login_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String registerNowScreen = '/register_now_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String settingsScreen = '/settings_screen';

  static const String uploadingCvScreen = '/uploading_cv_screen';

  static const String uploadedCvScreen = '/uploaded_cv_screen';

  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String profileScreen = '/profile_screen';

  static const String jobDiscruptionGooglePage = '/job_discruption_google_page';

  static const String jobDiscruptionGoogleTabContainerScreen =
      '/job_discruption_google_tab_container_screen';

  static const String jobDiscruptionGooglefullPage =
      '/job_discruption_googlefull_page';

  static const String jobDiscruptionGooglefullTabContainerScreen =
      '/job_discruption_googlefull_tab_container_screen';

  static const String uploadCvScreen = '/upload_cv_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    loginScreen: (context) => LoginScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    homepageContainerScreen: (context) => HomepageContainerScreen(),
    settingsScreen: (context) => SettingsScreen(),
    registerNowScreen: (context) => RegisterNowScreen(),
    categoriesScreen: (context) => CategoriesScreen(),
    uploadingCvScreen: (context) => UploadingCvScreen(),
    uploadedCvScreen: (context) => UploadedCvScreen(),
    androidLargeOneScreen: (context) => AndroidLargeOneScreen(),
    profileScreen: (context) => ProfileScreen(),
    jobDiscruptionGoogleTabContainerScreen: (context) =>
        JobDiscruptionGoogleTabContainerScreen(),
    jobDiscruptionGooglefullTabContainerScreen: (context) =>
        JobDiscruptionGooglefullTabContainerScreen(),
    uploadCvScreen: (context) => UploadCvScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
