import 'package:flutter/material.dart';
import 'package:workshala/presentation/settings_screen/settings_screen.dart';
import 'package:workshala/presentation/welcome_screen/welcome_screen.dart';
import 'package:workshala/presentation/register_now_screen/register_now_screen.dart';
import 'package:workshala/presentation/login_screen/login_screen.dart';
import 'package:workshala/presentation/uploaded_cv_screen/uploaded_cv_screen.dart';
import 'package:workshala/presentation/profile_screen/profile_screen.dart';
import 'package:workshala/presentation/job_discruption_google_tab_container_screen/job_discruption_google_tab_container_screen.dart';
import 'package:workshala/presentation/job_discruption_googlefull_tab_container_screen/job_discruption_googlefull_tab_container_screen.dart';
import 'package:workshala/presentation/upload_cv_screen/upload_cv_screen.dart';
import 'package:workshala/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String settingsScreen = '/settings_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String registerNowScreen = '/register_now_screen';

  static const String loginScreen = '/login_screen';

  static const String uploadedCvScreen = '/uploaded_cv_screen';

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
    settingsScreen: (context) => SettingsScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    registerNowScreen: (context) => RegisterNowScreen(),
    loginScreen: (context) => LoginScreen(),
    uploadedCvScreen: (context) => UploadedCvScreen(),
    profileScreen: (context) => ProfileScreen(),
    jobDiscruptionGoogleTabContainerScreen: (context) =>
        JobDiscruptionGoogleTabContainerScreen(),
    jobDiscruptionGooglefullTabContainerScreen: (context) =>
        JobDiscruptionGooglefullTabContainerScreen(),
    uploadCvScreen: (context) => UploadCvScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
