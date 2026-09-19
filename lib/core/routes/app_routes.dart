import 'package:flutter/cupertino.dart';
import 'package:islami_app/modules/layout/layout_view.dart';
import 'package:islami_app/modules/layout/quran/quran_details_view.dart';
import 'package:islami_app/modules/on_boarding/screen_one.dart';
import 'package:islami_app/modules/on_boarding/screen_two.dart';
import '../../modules/on_boarding/screen_five.dart';
import '../../modules/on_boarding/screen_four.dart';
import '../../modules/on_boarding/screen_three.dart';
import '../../modules/splash/splash_view.dart';
import 'app_routes_name.dart';

abstract class AppRoutes {

  static Map <String,Widget Function(BuildContext)> routes = {

    AppRoutesName.initial: (context) => const SplashView(),
    AppRoutesName.layout: (context) => const LayoutView(),
    AppRoutesName.screenOne: (context) => const ScreenOne(),
    AppRoutesName.screenTwo: (context) => const ScreenTwo(),
    AppRoutesName.screenThree: (context) => const ScreenThree(),
    AppRoutesName.screenFour: (context) => const ScreenFour(),
    AppRoutesName.screenFive: (context) => const ScreenFive(),
    AppRoutesName.quran: (context) => const QuranDetailsView()

  };
}