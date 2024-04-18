import 'package:fhedyapp/presentation/campaigns_screen/campaigns_screen.dart';
import 'package:flutter/material.dart';
import '../presentation/advertise/advertise.dart';
import '../presentation/advertiseone_screen/advertiseone_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/filter_screen/filter_screen.dart';
import '../presentation/splash_two_screen/splash_two_screen.dart';
import '../presentation/onboarding_1_screen/onboarding_1_screen.dart';
import '../presentation/advertisetwo_screen/advertisetwo_screen.dart';
import '../presentation/advertisethree_screen/advertisethree_screen.dart';
import '../presentation/language_screen/language_screen.dart';
import '../presentation/onboarding_2_screen/onboarding_2_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String filterScreen = '/filter_screen';

  static const String splashTwoScreen = '/splash_two_screen';
  static const String advertisetwoScreen = '/advertisetwo_screen';
  static const String advertiseOneScreen = '/advertiseone_screen';
  static const String advertisethreeScreen = '/advertisethree_screen';
  static const String languageScreen = '/language_screen';
  static const String campaigns_screen = '/campaigns_screen';
  static const String advertise = '/advertise';
  static const String onboarding2Screen = '/onboarding_2_screen';

  static const String onboarding1Screen = '/onboarding_1_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    signUpScreen: (context) => SignUpScreen(),
    filterScreen: (context) => FilterScreen(),
    splashTwoScreen: (context) => SplashTwoScreen(),
    onboarding1Screen: (context) => Onboarding1Screen(),
    advertisetwoScreen: (context) => AdvertisetwoScreen(),
    advertiseOneScreen: (context) => AdvertiseOneScreen(),
    campaigns_screen: (context) => CampaignsScreen(),
    advertise: (context) => Advertise(),
    advertisethreeScreen: (context) => AdvertisethreeScreen(),
    languageScreen: (context) => LanguageScreen(),
    onboarding2Screen: (context) => Onboarding2Screen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
