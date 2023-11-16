import 'package:flutter/material.dart';
import 'package:workshala_csi/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:workshala_csi/presentation/settings_screen/settings_screen.dart';
import 'package:workshala_csi/presentation/splash_screen/splash_screen.dart';
import 'package:workshala_csi/presentation/welcome_screen/welcome_screen.dart';
import 'package:workshala_csi/presentation/register_now_screen/register_now_screen.dart';
import 'package:workshala_csi/presentation/login_screen/login_screen.dart';
import 'package:workshala_csi/presentation/profile_screen/profile_screen.dart';
import 'package:workshala_csi/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String loginScreen = '/login_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String registerNowScreen = '/register_now_screen';

  static const String settingsScreen = '/settings_screen';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    loginScreen: (context) => LoginScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    settingsScreen: (context) => SettingsScreen(),
    registerNowScreen: (context) => RegisterNowScreen(),
    profileScreen: (context) => ProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
